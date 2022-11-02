import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nevis_demo/profile/user.dart';
import 'package:nevis_demo/profile/user_data_object.dart';

class LabeledTextField extends StatelessWidget {
  final String title;
  final UserDataObject data;

  LabeledTextField({
    this.title,
    this.data,
  });

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey)),
        Container(
          width: 200,
          child: CupertinoTextField(
            obscureText: false,
            placeholder: data.data,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: CupertinoColors.inactiveGray,
              ),
            ),
            onSubmitted: (String newVal) {
              data.data = newVal;
            },
          ),
        ),
      ],
    );
  }
}
