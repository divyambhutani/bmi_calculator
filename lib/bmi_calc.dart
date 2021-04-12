import 'dart:math';

class BMICalc {
  int weight;
  int height;
  double _bmi;
  BMICalc({
    this.height,
    this.weight,
  });

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    } else {
      return 'Normal';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher body weight than normal . You have to exercise more';
    } else if (_bmi < 18.5) {
      return 'You have lower body weight than normal . You have to eat a bit more';
    } else {
      return 'You are healthy and have normal body weight. Good Work';
    }
  }
}
