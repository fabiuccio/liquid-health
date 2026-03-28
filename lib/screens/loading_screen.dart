import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: AppColors.primary),
            SizedBox(height: 24),
            Text(AppStrings.loadingTitle, style: AppTextStyles.titleMedium),
          ],
        ),
      ),
    );
  }
}
