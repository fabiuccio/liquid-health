# Liquid Health - Technical Context

Liquid Health is a performance-tracking and AI-driven workout application built with Flutter, Supabase, and Gemini. This document provides a technical overview of the codebase for future development sessions.

## Project Structure

```text
lib/
├── core/
│   ├── constants/    # API keys, global strings
│   ├── errors/       # Typed exceptions for services/repos
│   ├── json/         # JsonMap typedef and custom converters
│   ├── router/       # GoRouter configuration and route paths
│   └── theme/        # AppColors, typography, and buildAppTheme()
├── models/           # Freezed + json_serializable data models
├── providers/        # Riverpod logic and service injections
├── repositories/     # Data mapping (e.g., Supabase -> Models)
├── screens/          # Top-level screen widgets
│   ├── shell/        # Stateful navigation shell
│   └── tabs/         # Primary tab-level screens
├── services/         # Hardware and API client wrappers
└── widgets/          # Shared reusable UI components
```

## Core Components

### Models (`lib/models/`)
Generated using **Freezed** and **json_serializable**.
- `UserProfile`: Core user data including biometrics and preferences.
- `WorkoutPlan` / `WorkoutSession` / `Exercise`: AI-generated training hierarchy.
- `WorkoutLog` / `LoggedExercise` / `LoggedSet`: User-logged performance data.
- `LifeEvent` / `DailyReadiness`: Contextual health metrics.
- `ExerciseDbEntry`: Model for external ExerciseDB API data.

### Services (`lib/services/`)
- `SupabaseService`: Direct interaction with Postgrest/Auth.
- `GeminiService`: Interface for LLM-based workout generation.
- `HealthService`: Bridge for Health Connect (Android) and HealthKit (iOS).
- `ExerciseDbService`: External exercise library retrieval.

### Routing (`lib/core/router/`)
Driven by **GoRouter**.
- Uses `StatefulShellRoute.indexedStack` for persistent navigation state.
- **Tabs**: Plan, Statistics, Exercises, Body.
- **Auth Flow**: Redirects to `/loading`, `/onboarding`, or `/missing-keys` based on state.

### Providers (`lib/providers/`)
Powered by **Riverpod**.
- `service_providers.dart`: Global singleton providers for all service and repository classes.
- `profile_gate_provider`: Monitors user profile presence to guard the `/app` route.

### Repositories (`lib/repositories/`)
- `UserProfileRepository`: Maps Supabase exceptions to typed `RepositoryException` and handles user profile state mapping.

### Theme (`lib/core/theme/`)
- **Visual Identity**: "Electric Flow" — a technical, high-performance OS aesthetic.
- **Color Palette**:
    - Background: `background` (#0F172A)
    - Surface: `surface` (#1E293B)
    - Primary Accent: `primary` (#3B82F6)
    - Secondary Accent: `secondary` (#22D3EE)
    - Identity/Success: `identity` (#2DD4BF)
- **Typography**:
    - Headlines: Inter 900, Italic, tight tracking.
    - Casing: strictly UPPERCASE for headers and status indicators.
- **Component Language**:
    - Cards: High rounding (48px).
    - Buttons: Standard rounding (16px).
    - Borders: Subtle low-opacity (5%) borders instead of heavy shadows.
- **Liquid Gradient**: Used for headlines and key UI elements (`primary` to `secondary`).

## Technical Standards
- **Error Handling**: Exceptions are thrown from services (e.g., `HealthServiceException`) and should be handled at the Repository or Provider level. No swallowed exceptions.
- **Database**: Aligned with `supabase/migrations/20240327000000_phase1_schema.sql`.
- **JSON**: Uses `JsonMap` typedef for type safety and `JsonMapConverter` for JSONB columns.
