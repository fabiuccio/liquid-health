import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingStep> _steps = [
    OnboardingStep(
      title: 'GOAL & TIMELINE',
      subtitle: 'WHAT IS YOUR PRIMARY FOCUS FOR THE NEXT 12 WEEKS?',
      content: const GoalSelectionStep(),
    ),
    OnboardingStep(
      title: 'TRAINING SCHEDULE',
      subtitle: 'WHEN AND WHERE DO YOU WANT TO TRANSFORM?',
      content: const ScheduleStep(),
    ),
    OnboardingStep(
      title: 'EQUIPMENT INVENTORY',
      subtitle: 'WHAT DO WE HAVE TO WORK WITH?',
      content: const EquipmentStep(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // Background Glow
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [AppColors.glowOverlay, Colors.transparent],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 48),
                // Progress Indicator
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: List.generate(_steps.length, (index) {
                      final isActive = index <= _currentPage;
                      return Expanded(
                        child: Container(
                          height: 4,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: isActive ? AppColors.primary : AppColors.surface,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 32),
                // Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => AppColors.liquidGradient.createShader(bounds),
                        child: Text(
                          _steps[_currentPage].title,
                          style: AppTextStyles.headlineMedium.copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _steps[_currentPage].subtitle,
                        style: AppTextStyles.labelNavUnselected.copyWith(
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Content
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (page) => setState(() => _currentPage = page),
                    itemCount: _steps.length,
                    itemBuilder: (context, index) => _steps[index].content,
                  ),
                ),
                // Action Button
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPage < _steps.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                        _currentPage == _steps.length - 1 ? 'GENERATE PLAN' : 'CONTINUE',
                        style: const TextStyle(fontSize: 16, letterSpacing: 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingStep {
  final String title;
  final String subtitle;
  final Widget content;

  OnboardingStep({required this.title, required this.subtitle, required this.content});
}

class GoalSelectionStep extends StatelessWidget {
  const GoalSelectionStep({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: const [
        SelectionCard(
          title: 'MUSCLE GAIN',
          description: 'Focus on hypertrophy and progressive overload.',
          icon: Icons.fitness_center,
          isSelected: true,
        ),
        SizedBox(height: 16),
        SelectionCard(
          title: 'FAT LOSS',
          description: 'Preserve muscle while optimizing caloric deficit.',
          icon: Icons.flash_on,
          isSelected: false,
        ),
        SizedBox(height: 16),
        SelectionCard(
          title: 'STRENGTH',
          description: 'Maximal force production and CNS adaptation.',
          icon: Icons.shutter_speed,
          isSelected: false,
        ),
      ],
    );
  }
}

class SelectionCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final bool isSelected;
  final String? trailingText;

  const SelectionCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.isSelected,
    this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(48),
        border: Border.all(
          color: isSelected ? AppColors.primary : Colors.white.withValues(alpha: 0.05),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary.withValues(alpha: 0.1) : AppColors.background,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: isSelected ? AppColors.primary : AppColors.textMuted, size: 24),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.titleMedium.copyWith(
                    color: isSelected ? AppColors.textPrimary : AppColors.textMuted,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: AppTextStyles.bodyMedium.copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          if (trailingText != null)
            Text(
              trailingText!,
              style: AppTextStyles.labelNavSelected.copyWith(color: AppColors.identity),
            )
          else if (isSelected)
            const Icon(Icons.check_circle, color: AppColors.identity, size: 20),
        ],
      ),
    );
  }
}

class ScheduleStep extends StatelessWidget {
  const ScheduleStep({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: const [
        SelectionCard(
          title: '4 DAYS / WEEK',
          description: 'Optimal balance for most high-performers.',
          icon: Icons.calendar_today,
          isSelected: true,
          trailingText: 'RECOMMENDED',
        ),
        SizedBox(height: 16),
        SelectionCard(
          title: '3 DAYS / WEEK',
          description: 'Minimum effective dose for maintenance.',
          icon: Icons.calendar_view_week,
          isSelected: false,
        ),
        SizedBox(height: 16),
        SelectionCard(
          title: '5 DAYS / WEEK',
          description: 'High volume for rapid adaptation.',
          icon: Icons.date_range,
          isSelected: false,
        ),
      ],
    );
  }
}

class EquipmentStep extends StatelessWidget {
  const EquipmentStep({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: const [
        SelectionCard(
          title: 'FULL GYM',
          description: 'Access to barbells, machines, and cables.',
          icon: Icons.location_on,
          isSelected: true,
        ),
        SizedBox(height: 16),
        SelectionCard(
          title: 'HOME GYM',
          description: 'Dumbbells, bench, and pull-up bar.',
          icon: Icons.home,
          isSelected: false,
        ),
        SizedBox(height: 16),
        SelectionCard(
          title: 'MINIMALIST',
          description: 'Bodyweight and resistance bands only.',
          icon: Icons.luggage,
          isSelected: false,
        ),
      ],
    );
  }
}
