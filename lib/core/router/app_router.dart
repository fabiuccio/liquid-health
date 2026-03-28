import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../providers/profile_gate_provider.dart';
import '../../screens/bootstrap_error_screen.dart';
import '../../screens/loading_screen.dart';
import '../../screens/missing_keys_screen.dart';
import '../../screens/onboarding_screen.dart';
import '../../screens/shell/app_shell_scaffold.dart';
import '../../screens/tabs/body_tab_screen.dart';
import '../../screens/tabs/exercises_tab_screen.dart';
import '../../screens/tabs/plan_tab_screen.dart';
import '../../screens/tabs/statistics_tab_screen.dart';
import '../constants/api_keys.dart';
import 'route_paths.dart';

/// Global [GoRouter] — keep redirects free of feature logic beyond gating.
final goRouterProvider = Provider<GoRouter>((ref) {
  final RouterRefreshNotifier refresh = RouterRefreshNotifier(ref);
  ref.onDispose(refresh.dispose);

  return GoRouter(
    initialLocation: RoutePaths.loading,
    refreshListenable: refresh,
    redirect: (BuildContext context, GoRouterState state) {
      if (!ApiKeys.hasAllKeys) {
        final String path = state.uri.path;
        return path == RoutePaths.missingKeys ? null : RoutePaths.missingKeys;
      }
      final AsyncValue<ProfileGate> gate = ref.read(profileGateProvider);
      return gate.when(
        loading: () {
          final String path = state.uri.path;
          return path == RoutePaths.loading ? null : RoutePaths.loading;
        },
        error: (Object _, StackTrace _) {
          final String path = state.uri.path;
          return path == RoutePaths.bootstrapError ? null : RoutePaths.bootstrapError;
        },
        data: (ProfileGate g) {
          final String path = state.uri.path;
          switch (g) {
            case ProfileGate.needsOnboarding:
              if (path == RoutePaths.onboarding) {
                return null;
              }
              return RoutePaths.onboarding;
            case ProfileGate.ready:
              if (path == RoutePaths.loading ||
                  path == RoutePaths.onboarding ||
                  path == RoutePaths.bootstrapError) {
                return RoutePaths.plan;
              }
              if (path == RoutePaths.missingKeys) {
                return RoutePaths.plan;
              }
              return null;
          }
        },
      );
    },
    routes: <RouteBase>[
      GoRoute(
        path: RoutePaths.loading,
        name: RouteNames.loading,
        builder: (BuildContext context, GoRouterState state) => const LoadingScreen(),
      ),
      GoRoute(
        path: RoutePaths.missingKeys,
        name: RouteNames.missingKeys,
        builder: (BuildContext context, GoRouterState state) => const MissingKeysScreen(),
      ),
      GoRoute(
        path: RoutePaths.onboarding,
        name: RouteNames.onboarding,
        builder: (BuildContext context, GoRouterState state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RoutePaths.bootstrapError,
        name: RouteNames.bootstrapError,
        builder: (BuildContext context, GoRouterState state) => const BootstrapErrorScreen(),
      ),
      GoRoute(
        path: RoutePaths.app,
        redirect: (BuildContext context, GoRouterState state) {
          if (state.uri.path == RoutePaths.app) {
            return RoutePaths.plan;
          }
          return null;
        },
        routes: <RouteBase>[
          StatefulShellRoute.indexedStack(
            builder: (
              BuildContext context,
              GoRouterState state,
              StatefulNavigationShell navigationShell,
            ) {
              return AppShellScaffold(navigationShell: navigationShell);
            },
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                    path: 'plan',
                    name: RouteNames.plan,
                    builder: (BuildContext context, GoRouterState state) =>
                        const PlanTabScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                    path: 'statistics',
                    name: RouteNames.statistics,
                    builder: (BuildContext context, GoRouterState state) =>
                        const StatisticsTabScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                    path: 'exercises',
                    name: RouteNames.exercises,
                    builder: (BuildContext context, GoRouterState state) =>
                        const ExercisesTabScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                    path: 'body',
                    name: RouteNames.body,
                    builder: (BuildContext context, GoRouterState state) =>
                        const BodyTabScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
});

/// Notifies [GoRouter] when [profileGateProvider] transitions loading → data.
final class RouterRefreshNotifier extends ChangeNotifier {
  RouterRefreshNotifier(this._ref) {
    _ref.listen<AsyncValue<ProfileGate>>(
      profileGateProvider,
      (AsyncValue<ProfileGate>? _, AsyncValue<ProfileGate> _) => notifyListeners(),
    );
  }

  final Ref _ref;
}
