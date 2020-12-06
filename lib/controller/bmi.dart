import 'dart:math';

class Bmi {
  final double _weight;
  final double _height;
  double _score;

  double get score => _score;

  Bmi(this._weight, this._height);

  double getBmiScore() {
    _score = Calculation.calculateBmiScore(_weight, _height);
    return _score;
  }

  String getBmiCategory() {
    return Information.bmiCategory(_score);
  }

  String getBmiDescription() {
    return Information.bmiCategoryDescription(_score);
  }
}

class Calculation {
  static double calculateBmiScore(double _weight, double _height) {
    return _weight / pow(_height / 100, 2);
  }

  static double calsculateBmiScore(double _weight, double _height) {
    return _weight / pow(_height / 100, 2);
  }
}

class Information {
  static String bmiCategory(double _score) {
    String category;

    if (_score >= 40) {
      category = 'OBESITAS KELAS III';
    } else if (_score >= 35.0 && _score <= 39.9) {
      category = 'OBESITAS KELAS II';
    } else if (_score >= 30.0 && _score <= 34.9) {
      category = 'OBESITAS KELAS I';
    } else if (_score >= 25.0 && _score <= 29.9) {
      category = 'PRA-OBESITAS';
    } else if (_score >= 18.5 && _score <= 24.9) {
      category = 'NORMAL';
    } else if (_score < 18.5) {
      category = 'KURANG';
    }
    return category;
  }

  static String bmiCategoryDescription(double _score) {
    String _categoryDescription;

    if (_score >= 30.0) {
      _categoryDescription =
          'Angka BMI anda menunjukkan bahwa anda sangat kelebihan berat badan. Kesehatan anda mungkin berisiko jika anda tidak menurunkan berat badan. Disarankan berbicara dengan dokter untuk mendapatkan nasihat.';
    } else if (_score >= 25.0 && _score <= 29.9) {
      _categoryDescription =
          'Angka BMI anda menunjukkan bahwa anda sedikit kelebihan berat badan. Disarankan untuk menurunkan berat badan demi kesehatan anda.';
    } else if (_score >= 18.5 && _score <= 24.9) {
      _categoryDescription =
          'Selamat! Angka BMI anda menunjukkan bahwa anda memiliki berat badan yang sehat berdasarkan tinggi badan anda. Tetap menjaga berat badan yang sehat untuk menurunkan risiko terkena masalah kesehatan';
    } else if (_score < 18.5) {
      _categoryDescription =
          'Angka BMI anda menunjukkan bahwa anda kekurangan berat badan, jadi anda mungkin perlu menambah berat badan.';
    }
    return _categoryDescription;
  }

  static int textColorBmiCategory(double _score) {
    int color;

    if (_score >= 40) {
      color = 0xFFEA412C;
    } else if (_score >= 35.0 && _score <= 39.9) {
      color = 0xFFEA412C;
    } else if (_score >= 30.0 && _score <= 34.9) {
      color = 0xFFEA412C;
    } else if (_score >= 25.0 && _score <= 29.9) {
      color = 0xFFE7C83D;
    } else if (_score >= 18.5 && _score <= 24.9) {
      color = 0xFF69D977;
    } else if (_score < 18.5) {
      color = 0xFF0C2594;
    }
    return color;
  }
}
