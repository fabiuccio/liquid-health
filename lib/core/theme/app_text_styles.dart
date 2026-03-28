import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Central text styles — widgets reference these instead of raw [TextStyle] literals.
abstract final class AppTextStyles {
  /// Main headlines — 900 weight, italic, tight tracking.
  static TextStyle headlineMedium = GoogleFonts.inter(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    letterSpacing: -1.5,
    color: AppColors.textPrimary,
    fontSize: 28,
  );

  /// Component headers — 700 weight, usually UPPERCASE in UI.
  static TextStyle titleLarge = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    fontSize: 22,
  );

  static TextStyle titleMedium = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    fontSize: 18,
  );

  /// Body text — 400 weight.
  static TextStyle bodyLarge = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted,
    fontSize: 16,
  );

  static TextStyle bodyMedium = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted,
    fontSize: 14,
  );

  static TextStyle labelNavSelected = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: AppColors.primary,
  );

  static TextStyle labelNavUnselected = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.textMuted,
  );
}
