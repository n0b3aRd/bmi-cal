import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  late double _bmi;

  Calculator({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 30.0) {
      return 'Obesity';
    } else if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal weight';
    } else {
      return 'Underweight';
    }
  }

  String getResultMSG() {
    if (_bmi >= 30.0) {
      return 'You are Obesity. You should see a doctor';
    } else if (_bmi >= 25.0) {
      return 'You are Overweight. You should eat balanced meal and do exercise';
    } else if (_bmi >= 18.5) {
      return 'You are Normal. You should eat balanced meal';
    } else {
      return 'You are Underweight. You should eat more foods';
    }
  }
}