import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryGreen = Color(0xFF7ED957);
  static const Color background = Color(0xFF0D1425); // Refined to match screenshot dark navy
  static const Color surface = Color(0xFF161F34);
  static const Color cardBg = Color(0xFF1E293B);
  
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xFF94A3B8);
  
  static const LinearGradient heroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF0D1425),
      Color(0xFF161F34),
    ],
  );
}

class AppSpacing {
  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 16.0;
  static const double l = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
  static const double sectionPadding = 40.0;
}

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.1,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyLg = TextStyle(
    fontSize: 18,
    color: AppColors.textSecondary,
    height: 1.6,
  );

  static const TextStyle bodyMd = TextStyle(
    fontSize: 16,
    color: AppColors.textSecondary,
  );

  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}
