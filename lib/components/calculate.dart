import 'dart:math';

import 'package:bmi_calculator/styles/styles.dart';
import 'package:flutter/material.dart';

class CalculateBmi {
  final int height;
  final int weight;
  CalculateBmi({
    required this.height,
    required this.weight,
  });

  double? result;
  String bmiCalculate() {
    result = weight / pow(height / 100, 2);
    return result!.toStringAsFixed(1);
  }

  String getResult() {
    if (result! >= 25) {
      return 'Overweight';
    } else if (result! > 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (result! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (result! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
