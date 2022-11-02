import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabelWithText extends StatelessWidget {
  final String title;
  final String text;

  LabelWithText({this.text, this.title});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey)),
        Text(text, style: TextStyle(color: Colors.blueGrey)),
      ],
    );
  }
}
