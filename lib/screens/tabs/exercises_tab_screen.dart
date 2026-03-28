import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class ExercisesTabScreen extends StatelessWidget {
  const ExercisesTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(AppStrings.exercisesTabTitle, style: AppTextStyles.titleMedium),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            AppStrings.exercisesTabBody,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyLarge,
          ),
        ),
      ),
    );
  }
}
