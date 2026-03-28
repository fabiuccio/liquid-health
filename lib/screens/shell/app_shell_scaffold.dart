import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_strings.dart';
import '../../core/theme/app_colors.dart';

class AppShellScaffold extends StatelessWidget {
  const AppShellScaffold({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.background,
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: AppColors.primary.withValues(alpha: 0.24),
        onDestinationSelected: (int index) => navigationShell.goBranch(index),
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.calendar_today_rounded),
            label: AppStrings.tabPlan,
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_rounded),
            label: AppStrings.tabStatistics,
          ),
          NavigationDestination(
            icon: Icon(Icons.fitness_center_rounded),
            label: AppStrings.tabExercises,
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded),
            label: AppStrings.tabBody,
          ),
        ],
      ),
    );
  }
}
