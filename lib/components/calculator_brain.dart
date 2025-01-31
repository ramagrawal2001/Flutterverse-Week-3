import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  int height;
  int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5) return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You need to do exercise.';
    else if (_bmi > 18.5) return 'Nothing to worry, enjoy.';
    return 'Eat some food!';
  }
}
