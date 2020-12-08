import 'dart:math';

class Calculation {
  num calculateBmiScore(num _weight, num _height) {}
}

class ImperialUnits implements Calculation {
  @override
  num calculateBmiScore(num _weight, num _height) {
    return (_weight / pow(_height, 2)) * 703;
  }
}

class MetricUnits implements Calculation {
  @override
  num calculateBmiScore(num _weight, num _height) {
    return _weight / pow(_height / 100, 2);
  }
}
