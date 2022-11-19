// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/styles/colors.dart';
import 'package:flutter/widgets.dart';

TextStyle get subTitltStyle {
  return TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );
}

TextStyle get titltStyle {
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: labelTextColor,
  );
}

TextStyle get resultStyle {
  return TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: resultColor,
  );
}
