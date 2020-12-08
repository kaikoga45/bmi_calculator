import 'package:flutter/material.dart';

class ScaleForm extends StatelessWidget {
  final String validatorMessage;
  final String labelText;
  final String hintText;
  final Function onChanged;

  ScaleForm(
      {this.validatorMessage, this.hintText, this.labelText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: (value) {
        if (value.isEmpty) {
          return validatorMessage;
        }
        return null;
      },
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xFF6E6E6E),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: const Color(0xFFEA4566),
          fontSize: 18.0,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
