import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_text_styles.dart';

class MissingKeysScreen extends StatelessWidget {
  const MissingKeysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.key_off_rounded, size: 80, color: AppColors.primary),
              const SizedBox(height: 24),
              Text(AppStrings.missingKeysTitle, style: AppTextStyles.headlineMedium),
              const SizedBox(height: 16),
              Text(
                AppStrings.missingKeysBody,
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
