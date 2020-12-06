import 'package:bmi_calculator/component/button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double _bmiScore;
  final String _bmiCategory;
  final String _bmiScoreDescription;
  final int _textColorBmiCategory;

  ResultScreen(
    this._bmiScore,
    this._bmiCategory,
    this._textColorBmiCategory,
    this._bmiScoreDescription,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1236),
      appBar: AppBar(
        title: Text(
          'BMI Kalkulator',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF12163A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hasil Anda',
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Card(
                color: Color(0xFF151A3C),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '$_bmiCategory',
                        style: TextStyle(
                          color: Color(_textColorBmiCategory),
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        '${_bmiScore.toStringAsFixed(1)}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 90.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'Angka BMI Normal:',
                              style: TextStyle(
                                color: Color(0xFF646573),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '18,5 - 25 BMI',
                              style: TextStyle(
                                color: Color(0xFFDCDCDF),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '$_bmiScoreDescription',
                        style: TextStyle(
                          color: Color(0xFFDCDCDF),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ActionButton(
                title: 'HITUNG ULANG BMI',
                onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
