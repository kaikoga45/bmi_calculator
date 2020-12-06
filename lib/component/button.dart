import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  ActionButton({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFEA4566),
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
