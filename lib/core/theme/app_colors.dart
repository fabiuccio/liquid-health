import 'package:flutter/material.dart';

/// Professional Night palette — use only these, never inline [Color] literals in widgets.
abstract final class AppColors {
  static const Color background = Color(0xFF0F172A);
  static const Color surface = Color(0xFF1E293B);
  static const Color primary = Color(0xFF3B82F6); // Electric Blue
  static const Color secondary = Color(0xFF22D3EE); // Cyber Cyan
  static const Color identity = Color(0xFF2DD4BF); // Teal — success/completion
  static const Color textMuted = Color(0xFF94A3B8);
  static const Color textPrimary = Color(0xFFF8FAFC);

  static const Color white = Color(0xFFFFFFFF);
  static const Color white70 = Color(0xB3FFFFFF);
  static const Color white54 = Color(0x8AFFFFFF);

  static const LinearGradient liquidGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, secondary],
  );

  static const Color glowOverlay = Color(0x1A3B82F6); // rgba(59,130,246,0.1)
}
