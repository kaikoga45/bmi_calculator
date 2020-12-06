import 'package:flutter/material.dart';

class MeasureSlider extends StatelessWidget {
  MeasureSlider(
      {@required this.value,
      @required this.valueType,
      @required this.onChanged});

  final num value;
  final Function onChanged;
  final String valueType;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        color: Color(0xFF151A3C),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              valueType,
              style: TextStyle(
                color: Color(0xFF7D7F8A),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '${value.toInt()}',
                  style: TextStyle(
                    fontSize: 45.0,
                  ),
                ),
                TextSpan(
                  text: ' ${valueType == 'Tinggi' ? 'Cm' : 'Kg'}',
                  style: TextStyle(
                    color: Color(0xFF7D7F8A),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Color(0xFFF5F5F7),
                thumbColor: Color(0xFFEA4566),
              ),
              child: Slider(
                min: 10,
                max: 400,
                value: value,
                onChanged: onChanged,
              ),
            )
          ],
        ),
      ),
    );
  }
}
