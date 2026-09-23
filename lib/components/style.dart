import 'package:flutter/material.dart';

class KalkulatorStyle {
  // Color Palette
  static final Color backgroundColor = Colors.grey[100]!;
  static const Color primaryCardColor = Colors.white;
  static const Color btnTambahColor = Colors.blue;
  static const Color btnKurangColor = Colors.orange;
  static const Color btnKaliColor = Colors.purple;
  static const Color btnBagiColor = Colors.teal;

  // Card Styles
  static final cardShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  );

  // Text Styles
  static const TextStyle appBarTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const TextStyle resultLabelStyle = TextStyle(
    color: Colors.white70,
    fontSize: 12,
    letterSpacing: 1.2,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle resultValueStyle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  // Helper Custom Button Style
  static ButtonStyle operationButtonStyle(Color color) {
    return ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 1,
    );
  }
}