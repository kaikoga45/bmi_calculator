import 'package:bmi_calculator/component/button.dart';
import 'package:bmi_calculator/controller/bmi.dart';
import 'package:bmi_calculator/controller/calculation.dart';
import 'package:bmi_calculator/controller/information.dart';
import 'package:bmi_calculator/screen/about_screen.dart';
import 'package:bmi_calculator/screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/component/scale_form.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  num _height;
  num _weight;

  List<Object> _instancesUnitsTypeMeasures = [MetricUnits(), ImperialUnits()];
  int _selectedUnitsTypeMeasures = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1236),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'BMI Kalkulator',
          style: const TextStyle(
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
        backgroundColor: const Color(0xFF12163A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: _formKey,
              child: Card(
                color: const Color(0xFF151A3C),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 20.0, bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ScaleForm(
                        labelText: 'Tinggi',
                        hintText:
                            _selectedUnitsTypeMeasures == 0 ? 'Cm' : 'Inch',
                        validatorMessage: 'Tolong masukkan tinggi badan anda',
                        onChanged: (value) {
                          setState(() {
                            _height = num.parse(value);
                          });
                        },
                      ),
                      SizedBox(height: 20.0),
                      ScaleForm(
                        labelText: 'Berat',
                        hintText:
                            _selectedUnitsTypeMeasures == 0 ? 'Kg' : 'Lbs',
                        validatorMessage: 'Tolong masukkan berat badan anda',
                        onChanged: (value) {
                          setState(() {
                            _weight = num.parse(value);
                          });
                        },
                      ),
                      SizedBox(height: 20.0),
                      Card(
                        color: const Color(0xFF12163A),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tipe Ukuran',
                                style: TextStyle(color: Colors.white),
                              ),
                              DropdownButton(
                                dropdownColor: Color(0xFF151A3C),
                                value: _selectedUnitsTypeMeasures,
                                items: [
                                  DropdownMenuItem(
                                    value: 0,
                                    child: Text(
                                      'Metrik',
                                      style: TextStyle(
                                          color: const Color(0xFFEA4566)),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Imperial',
                                      style: TextStyle(
                                          color: const Color(0xFFEA4566)),
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _selectedUnitsTypeMeasures = value;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ActionButton(
              title: 'HITUNG BMI',
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Bmi bmi = Bmi(_weight, _height);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmi.getBmiScore(
                            _instancesUnitsTypeMeasures[
                                _selectedUnitsTypeMeasures],
                            _weight,
                            _height),
                        bmi.getBmiCategory(),
                        Information.textColorBmiCategory(bmi.score),
                        bmi.getBmiDescription(),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
