-- Step 1: user_profiles
CREATE TABLE IF NOT EXISTS user_profiles (
  id uuid PRIMARY KEY DEFAULT auth.uid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  primary_goal text,
  aesthetic_goal text,
  timeline text,
  days_per_week int,
  time_of_day text,
  workout_length_mins int,
  location text,
  equipment_inventory jsonb,
  age int,
  weight_kg float,
  height_cm float,
  sex text,
  injuries jsonb,
  medical_notes text,
  experience_level text,
  sleep_quality_baseline text,
  stress_baseline text,
  has_wearable boolean,
  wearable_type text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Step 2: workout_plans
CREATE TABLE IF NOT EXISTS workout_plans (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  generated_at timestamptz DEFAULT now(),
  week_start_date date,
  plan_json jsonb,  -- full AI-generated plan
  is_active boolean DEFAULT true,
  created_at timestamptz DEFAULT now()
);

-- Step 3: workout_sessions
CREATE TABLE IF NOT EXISTS workout_sessions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  plan_id uuid REFERENCES workout_plans(id) ON DELETE CASCADE,
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  session_type text,  -- push/pull/legs/full_body/etc
  session_variant text,  -- gym/home/travel
  week_number int,
  day_of_week int,
  exercises jsonb,  -- [{name, sets, reps, weight, notes, pe_note}]
  created_at timestamptz DEFAULT now()
);

-- Step 4: workout_logs
CREATE TABLE IF NOT EXISTS workout_logs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  session_id uuid REFERENCES workout_sessions(id) ON DELETE SET NULL,
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  date date DEFAULT current_date,
  completed_at timestamptz DEFAULT now(),
  exercises_logged jsonb,  -- [{name, sets: [{weight, reps, done}]}]
  hip_score int,
  feeling text,
  rpe int,
  notes text,
  biometrics_at_time jsonb,  -- snapshot of health data at session time
  ai_modifications jsonb,  -- any in-session adaptations applied
  week_number int,
  periodization_phase text,
  created_at timestamptz DEFAULT now()
);

-- Step 5: life_events
CREATE TABLE IF NOT EXISTS life_events (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  date date DEFAULT current_date,
  event_type text,  -- sick_mild/sick_severe/travel/missed/injury/etc
  description text,
  ai_recommendation jsonb,  -- Gemini's response
  accepted boolean DEFAULT false,
  revised_week jsonb,  -- the accepted revised plan
  created_at timestamptz DEFAULT now()
);

-- Step 6: daily_readiness
CREATE TABLE IF NOT EXISTS daily_readiness (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  date date DEFAULT current_date,
  sleep_hours float,
  sleep_quality text,
  resting_hr int,
  hrv int,
  steps int,
  mood text,
  readiness_score text,  -- FULL/MODIFIED/REDUCED/REST/ACTIVE_RECOVERY
  ai_flags jsonb,  -- specific modifications flagged
  source text,  -- health_connect/manual
  created_at timestamptz DEFAULT now()
);

-- Enable Row Level Security (RLS)
ALTER TABLE user_profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE workout_plans ENABLE ROW LEVEL SECURITY;
ALTER TABLE workout_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE workout_logs ENABLE ROW LEVEL SECURITY;
ALTER TABLE life_events ENABLE ROW LEVEL SECURITY;
ALTER TABLE daily_readiness ENABLE ROW LEVEL SECURITY;

-- Policies (simple user ownership)
CREATE POLICY "Users can manage their own profile" ON user_profiles FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own plans" ON workout_plans FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own sessions" ON workout_sessions FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own logs" ON workout_logs FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own life events" ON life_events FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own readiness" ON daily_readiness FOR ALL USING (auth.uid() = user_id);
