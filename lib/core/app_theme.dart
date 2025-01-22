import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF004182);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFFDD835);
  static const Color textColor = Color(0xFF06004F);
  static const Color borderColor = Color(0x4D004182);
  static const Color oldPriceColor = Color(0x99004182);

  static TextStyle regularStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: textColor,
  );
  static TextStyle oldPrice = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: oldPriceColor,
    decoration: TextDecoration.lineThrough,
    decorationColor: oldPriceColor
  );
}
