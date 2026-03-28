# The Liquid Routine — Technical Reference
> For Claude Code build sessions. Read this alongside CONTEXT.md before every session.
> Full product documentation: The_Liquid_Routine_v1.4.docx

---

## 1. Product Philosophy

**One sentence:** The only fitness app that gets smarter when life gets harder.

**The problem it solves:** When life disrupts a training plan, users face paralysis — they either overtrain to compensate or abandon entirely. No existing app handles this. The Liquid Routine detects disruptions passively and provides ONE clear recommendation, never a menu of options.

**Key UX rules (non-negotiable):**
- ONE clear recommendation when life disrupts — never a menu of options
- Open app → first exercise logged in under 3 taps on a normal day
- Injury/PE warnings appear every session, not just once at setup
- The app adapts — the user does not explain themselves every day
- Offline first: core workout logging works without internet
- Readiness assessments are suggestions, never blockers

---

## 2. Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter + Dart |
| State Management | Riverpod (code generation) |
| Backend / Auth / DB | Supabase |
| AI Engine | Google Gemini 1.5 Pro |
| Health Data | Flutter Health plugin + Health Connect (Android primary) |
| Exercise Data | ExerciseDB API (exercisedb.dev via RapidAPI) + local exercises_extended.json |
| Charts | fl_chart |
| Text-to-Speech | flutter_tts |
| Audio (rest timer beeps) | audioplayers or just_audio |
| Navigation | GoRouter |
| Models | freezed + json_serializable |

---

## 3. Supabase Schema

### user_profiles
```sql
id uuid PRIMARY KEY
user_id uuid REFERENCES auth.users
age int
weight_kg float
height_cm float
goal text
aesthetic_goal text
training_days_per_week int
preferred_time text
session_duration_minutes int
home_equipment jsonb
injury_history jsonb
medical_notes text
experience_level text
sleep_quality_baseline text
stress_baseline text
has_wearable boolean
wearable_type text
created_at timestamptz DEFAULT now()
```

### workout_plans
```sql
id uuid PRIMARY KEY
user_id uuid REFERENCES auth.users
generated_at timestamptz
week_start_date date
plan_json jsonb
is_active boolean DEFAULT true
```

### workout_sessions
```sql
id uuid PRIMARY KEY
plan_id uuid REFERENCES workout_plans
user_id uuid REFERENCES auth.users
session_type text  -- push | pull | legs | full_body | upper | lower
session_variant text  -- gym | home | travel
week_number int
day_of_week int
exercises jsonb
```

### workout_logs
```sql
id uuid PRIMARY KEY
session_id uuid REFERENCES workout_sessions
user_id uuid REFERENCES auth.users
date date
completed_at timestamptz
exercises_logged jsonb
hip_score int
feeling text
rpe int
notes text
biometrics_at_time jsonb
ai_modifications jsonb
week_number int
periodization_phase text
```

### life_events
```sql
id uuid PRIMARY KEY
user_id uuid REFERENCES auth.users
date date
event_type text
description text
ai_recommendation jsonb
accepted boolean
revised_week jsonb
```

### daily_readiness
```sql
id uuid PRIMARY KEY
user_id uuid REFERENCES auth.users
date date
sleep_hours float
sleep_quality text
resting_hr int
hrv int
steps int
mood text
readiness_score text  -- FULL | MODIFIED | REDUCED | REST | ACTIVE_RECOVERY
ai_flags jsonb
source text  -- health_connect | manual
```

### exercise_db_cache
```sql
exercise_id text PRIMARY KEY
name text
body_part text
target text
equipment text
gif_url text
instructions jsonb
cached_at timestamptz DEFAULT now()
```

**RLS:** All tables gated by `auth.uid() = user_id`.

---

## 4. Data Models (freezed)

All models use freezed + json_serializable. Key fields:

### Exercise
```dart
@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required String name,
    required int sets,
    required String reps,          // e.g. "10-12" or "6-8"
    required String weightTarget,  // e.g. "18 kg each" or "Bodyweight"
    required int restSeconds,
    required String notes,
    String? peNote,                // PE compensation warning
    required bool injuryFlag,
    required String equipmentType, // barbell|dumbbell|cable|machine|bodyweight|band
  }) = _Exercise;
}
```

### WorkoutSession
```dart
@freezed
class WorkoutSession with _$WorkoutSession {
  const factory WorkoutSession({
    String? id,
    required String sessionType,   // push|pull|legs|full_body
    required String sessionVariant,// gym|home|travel
    required int weekNumber,
    required int dayOfWeek,
    required List<Exercise> exercises,
  }) = _WorkoutSession;
}
```

### DailyReadiness
```dart
enum ReadinessScore { full, modified, reduced, rest, activeRecovery }
```

---

## 5. Two-Level Goal Architecture

**Level 1 — Destination (static, set at onboarding):**
The 3-6 month goal. Never changes unless user deliberately updates. Displayed as persistent header on Plan tab always visible.

**Level 2 — This Week (dynamic, generated each Sunday):**
Generated fresh from last week's actual logged performance. User never sees more than one week ahead. This is a documented feature, not a limitation.

**Weekly generation Gemini prompt context:**
- User goal (static) + target date
- Current status vs goal (BF%, pull-up count, etc.)
- Week number + phase (hypertrophy | strength)
- Last week: planned vs actually logged sessions
- Last week: actual weights/reps, hip scores, feelings
- Any Life Happened events + whether recommendations were followed
- Biometric snapshot: sleep average, HRV trend, RHR trend
- Instruction: generate this week's plan that moves toward the goal. If behind on trajectory, flag explicitly. Apply progressive overload if strong week.

**Periodization:**
- Weeks 1,2,3 → Hypertrophy (10-12 reps, RPE 7-9)
- Week 4 → Strength signal (6-8 reps, RPE 8-9)
- Repeat. Progressive overload: +2.5kg on compounds when top of rep range hit with 1 rep in reserve.

---

## 6. AI Prompt Templates

### Weekly Plan Generation
```
System: You are a professional strength and conditioning coach.

Generate this week's training plan for the user.

User goal: {goal_description}
Target date: {target_date}
Current status: {current_metrics}
Week: {week_number} of ~{total_weeks}. Phase: {hypertrophy|strength}
Rep range this week: {10-12|6-8}
Last week performance: {last_week_summary_json}
Life events this week: {life_events_json}
Biometrics: {biometrics_summary}

Split: {recommended_split} for {training_days} days/week
For EVERY session generate THREE variants: GYM | HOME | TRAVEL
Embed injury modifications directly in exercise notes.
For pectus excavatum: flag ROM restrictions on chest exercises as pe_note.
For hip surgery history: flag Bulgarian split squats as monitoring exercise.
Use exercise names that exist in ExerciseDB API where possible.

If behind goal trajectory: flag explicitly and adjust volume/intensity.
If strong week: apply progressive overload.

Respond ONLY with valid JSON. No markdown. Schema:
{
  "week_label": string,
  "phase": "hypertrophy" | "strength",
  "rep_range": "10-12" | "6-8",
  "sessions": [{
    "day_of_week": int,
    "session_type": string,
    "variants": {
      "gym": { "duration_minutes": int, "exercises": [Exercise] },
      "home": { "duration_minutes": int, "exercises": [Exercise] },
      "travel": { "duration_minutes": int, "exercises": [Exercise] }
    }
  }]
}

Exercise schema:
{
  "name": string,
  "sets": int,
  "reps": string,
  "weight_target": string,
  "rest_seconds": int,
  "notes": string,
  "pe_note": string | null,
  "injury_flag": boolean,
  "equipment_type": string
}
```

### Daily Readiness Assessment
```
Assess training readiness for today.
User profile summary: {profile_summary}
Today's biometrics: {biometrics_json}
Recent training (last 3 sessions): {recent_history}
Scheduled session today: {session_type}

Respond with JSON only:
{
  "readiness": "FULL" | "MODIFIED" | "REDUCED" | "REST" | "ACTIVE_RECOVERY",
  "reason": "one sentence",
  "modifications": ["array of specific exercise modifications if any"],
  "flag": "string or null"
}
```

### Life Happened Re-balancer
```
The user has reported a disruption to their training week.
User profile: {profile_json}
Current week plan: {week_plan_json}
Completed sessions so far: {completed_sessions}
Today's date: {date}
Remaining days this week: {remaining_days}
What happened: {user_description}

IMPORTANT: This user has ADHD. Give ONE clear recommendation, not a menu of options.

Provide:
1. A clear recommendation in 2 sentences max
2. A revised day-by-day schedule for remaining days
3. Specific exercise modifications if needed

Respond in JSON:
{
  "recommendation": string,
  "revised_days": [{"date": string, "session_type": string, "variant": string, "rationale": string}],
  "modifications": []
}
```

### Fallback Rules (when AI unavailable)
| Trigger | Response |
|---|---|
| sleep_hours < 5 | REDUCED: drop 1 set/exercise, -10% load |
| sleep_hours < 6 | MODIFIED: drop 1 set on compounds only |
| resting_hr > baseline + 5bpm | REST recommended |
| hrv < 0.7 × 14-day baseline | MODIFIED or REST |
| Missed session, push not logged by Tuesday | Reschedule to Wednesday |
| Missed 2+ sessions | Full body moderate on next available day |
| Travel reported, no gym | Load TRAVEL variant for remaining sessions |
| Hip discomfort | Remove Bulgarian split squats → leg press |

---

## 7. ExerciseDB API

**Product:** exercisedb.dev (NOT exercisedb.io — different product)
**Access:** RapidAPI, free tier for MVP
**Base URL:** `https://exercisedb.p.rapidapi.com`
**Auth:** `X-RapidAPI-Key` header — stored in environment variables, NEVER hardcoded

### Endpoints
| Endpoint | Used In | Cache |
|---|---|---|
| GET /exercises/bodyPart/{bodyPart} | Exercise Browser | 30 days |
| GET /exercises/equipment/{equipment} | Exercise Browser | 30 days |
| GET /exercises/target/{target} | Exercise Browser | 30 days |
| GET /exercises/name/{name} | Exercise Info Modal | Permanent |
| GET /exercises/exercise/{id} | Exercise Info Modal | Permanent |
| GET /exercises/bodyPartList | Filter chips | Permanent |
| GET /exercises/equipmentList | Filter chips | Permanent |
| GET /exercises/targetList | Filter chips | Permanent |

### Critical Rules
- **NEVER call ExerciseDB during active workout** — use exercises_extended.json only
- Cache-first always: check Supabase exercise_db_cache before any API call
- Cache hit < 30 days → return local, zero API calls
- matchByName() searches cache by ILIKE before hitting API
- Metadata lists cached permanently (never change)

### Data Priority
1. **exercises_extended.json** (local bundle) — active workout, PE notes, injury modifications, always available offline
2. **Supabase exercise_db_cache** — previously fetched ExerciseDB data
3. **ExerciseDB API** — cache miss in Exercise Browser or Info Modal only

### Future Upgrade
$129 perpetual license from exercisedb.dev replaces RapidAPI dependency. Architecture stays identical — only auth changes.

---

## 8. Health Connect Integration

**Permissions requested:**
- SLEEP (duration + quality) → daily readiness
- HEART_RATE (resting) → readiness, RHR vs baseline
- HEART_RATE_VARIABILITY → readiness, HRV trend
- STEPS → non-training load proxy
- WORKOUT → detect training done outside the app

**Proactive missed session detection (runs on every app open):**
1. Fetch Health Connect data for last 48h
2. Check Supabase workout_logs — any scheduled sessions without a log?
3. Cross-reference: no log AND no Health Connect workout AND scheduled session → confirmed miss
4. Check biometrics: RHR elevated or HRV below baseline → likely illness
5. If confirmed miss → auto-surface Life Happened re-balancing prompt (pre-filled context)
6. If biometric anomaly only → show readiness banner modification
7. If normal → show FULL banner and today's session

**Message tone:** Never "You missed your workout." Always "Wednesday's session looks like it did not happen — want me to adjust the rest of your week?"

---

## 9. Navigation Structure

GoRouter with StatefulShellRoute.indexedStack for persistent tab state.

```
/loading          → checks auth + profile state
/missing-keys     → shown if API keys missing
/onboarding       → 5-step flow (first launch only)
/app              → shell with bottom nav
  /app/plan       → Tab 1: calendar, readiness, Life Happened
  /app/stats      → Tab 2: muscle fatigue map, progress charts
  /app/exercises  → Tab 3: ExerciseDB browser
  /app/body       → Tab 4: weight tracking, BF%, metrics
/workout/:sessionId → full-screen active workout overlay
```

---

## 10. Active Workout Screen Rules

- Exercise name: large text (28sp+), readable at 60cm
- PE/injury warning: amber banner, shown EVERY session not just once
- Set logging: weight + reps required before checkbox can be ticked
- Bodyweight/Band exercises: hide weight field, show reps only
- Weight propagation: change weight on set N → auto-update all uncompleted sets (N+1, N+2...)
- Rest timer: auto-starts on set completion, 90s compounds / 60s isolation
- Beep sounds: 440hz at 3s and 2s, 880hz at 1s, double beep at 0 (Web Audio / audioplayers)
- Voice: flutter_tts announces next exercise on last set of current exercise
- "Next up: [name]" / "Last exercise. [name]" / "Session complete. Great work."
- Hip score: required before save (1-10, no default)
- Feeling: required before save (Strong/Solid/Average/Tired/Bad)

---

## 11. Onboarding Steps

1. **Goal & Timeline** — primary goal, aesthetic goal (V-taper etc.), timeline
2. **Schedule** — training days/week, preferred time, session duration, location
3. **Equipment** — multi-select home inventory with kg values
4. **Physical Profile** — age/weight/height, injury history (multi-select + free text), medical notes, experience
5. **Recovery Profile** — sleep baseline, stress baseline, wearable type
6. **Generate** — Gemini API call, loading animation, plan preview

---

## 12. ADHD-Specific Rules (embed in AI prompts)

| Situation | Pre-decided response |
|---|---|
| Sleep under 5 hours | Do the session. Drop 1 set/exercise. -10% load. |
| Hip discomfort | Swap Bulgarian split squat → leg press immediately |
| Don't feel like going | Commit to warmup only. Once there, finish. |
| Can't remember periodization week | Check the goal header — pre-filled dates |
| Running short on time | Cut isolation last, never compounds. Face pulls and band pull-aparts always done. |
| Protein target hard to hit | Wellbutrin suppresses appetite. Shake is not optional. |

---

## 13. exercises_extended.json

Local bundle of 58 exercises across 9 categories:
- chest, back, shoulders, legs, biceps, triceps, core, mobility, pe_compensation

Schema per exercise:
```json
{
  "id": "string",
  "name": "string",
  "aliases": ["array of alternative names"],
  "category": "string",
  "equipment": "string",
  "musclesTargeted": ["array"],
  "shortDescription": "string",
  "description": "full text",
  "cues": ["array of coaching cues"],
  "peNote": "string or null"
}
```

This file is the authoritative source for PE compensation exercises, band movements, and mobility work. It grows over time and is never replaced by ExerciseDB data.

---

## 14. Build Phase Sequence

| Phase | Weeks | Key Deliverable | Gate |
|---|---|---|---|
| Foundation | 1-2 | Onboarding + Supabase schema + weekly AI plan generation | Plan generates valid JSON for 5 different profiles |
| Workout Loop | 3-4 | Active workout screen + rest timer + voice + session save | Complete session logs correctly to Supabase |
| Adaptive Layer | 5-6 | Daily readiness + Health Connect + Life Happened re-balancer | App handles 3 disruption scenarios without crashing |
| Polish | 7-8 | Exercise descriptions + ExerciseDB integration + progressive overload display | Full session feels professional end-to-end |

**Do not skip phases. Do not build Phase 5 statistics before Phase 3 adaptation is working.**

---

*Last updated: March 2026 | App: The Liquid Routine | Domain: liquidroutine.app*
