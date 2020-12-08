import 'package:bmi_calculator/controller/information.dart';

class Bmi {
  final num _weight;
  final num _height;
  num _score;

  double get weight => _weight;
  double get score => _score;
  double get height => _height;

  Bmi(this._weight, this._height);

  num getBmiScore(dynamic typeUnitsMeasures, num weight, num height) {
    _score = typeUnitsMeasures.calculateBmiScore(weight, height);
    return _score;
  }

  String getBmiCategory() {
    return Information.bmiCategory(_score);
  }

  String getBmiDescription() {
    return Information.bmiCategoryDescription(_score);
  }
}
