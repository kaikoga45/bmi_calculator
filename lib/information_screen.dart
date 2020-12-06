import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/app_icon.png',
              height: 150.0,
              width: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'TENTANG BMI KALKULATOR',
              style: TextStyle(
                color: Color(0xFFEA4566),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Aplikasi ini menggunakan formula BMI yang diterima secara universal yang direkomendasikan oleh WHO (World Health Organization) yang tidak memperhitungkan usia, jenis kelamin, atau komposisi tubuh.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFDCDCDF),
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'Versi 1.0.0',
              style: TextStyle(color: Colors.white, fontSize: 13.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
