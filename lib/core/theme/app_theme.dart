import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

/// Global Material 3 dark theme for the app.
ThemeData buildAppTheme() {
  final TextTheme base = GoogleFonts.interTextTheme(ThemeData.dark().textTheme);

  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
    ),
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
      onPrimary: AppColors.white,
      onSurface: AppColors.textPrimary,
    ),
    textTheme: base.copyWith(
      headlineMedium: AppTextStyles.headlineMedium,
      titleLarge: AppTextStyles.titleLarge,
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
    ),
    cardTheme: CardThemeData(
      color: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48),
        side: BorderSide(color: AppColors.white.withValues(alpha: 0.05)),
      ),
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.background,
      indicatorColor: AppColors.primary.withValues(alpha: 0.12),
      labelTextStyle: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return AppTextStyles.labelNavSelected;
        }
        return AppTextStyles.labelNavUnselected;
      }),
    ),
  );
}
