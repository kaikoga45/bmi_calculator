import 'package:bmi_calculator/component/button.dart';
import 'package:bmi_calculator/controller/bmi.dart';
import 'package:bmi_calculator/information_screen.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/component/measure_slider.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double _height = 170.0;
  double _weight = 70.0;

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InfoScreen(),
                ),
              );
            },
            icon: Icon(Icons.help_outline),
          )
        ],
        backgroundColor: Color(0xFF12163A),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MeasureSlider(
              value: _height,
              valueType: 'Tinggi',
              onChanged: (data) {
                setState(() {
                  _height = data;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            MeasureSlider(
              value: _weight,
              valueType: 'Berat',
              onChanged: (data) {
                setState(() {
                  _weight = data;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ActionButton(
              title: 'HITUNG BMI',
              onPressed: () {
                var bmi = Bmi(_weight, _height);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmi.getBmiScore(),
                      bmi.getBmiCategory(),
                      Information.textColorBmiCategory(bmi.score),
                      bmi.getBmiDescription(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
