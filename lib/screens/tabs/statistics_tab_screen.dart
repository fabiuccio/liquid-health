import 'package:flutter/material.dart';

import '../../core/constants/app_strings.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';

class StatisticsTabScreen extends StatelessWidget {
  const StatisticsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(AppStrings.statisticsTabTitle, style: AppTextStyles.titleMedium),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            AppStrings.statisticsTabBody,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyLarge,
          ),
        ),
      ),
    );
  }
}
