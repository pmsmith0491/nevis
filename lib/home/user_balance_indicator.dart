import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/profile/user.dart';

class UserBalanceIndicator extends StatelessWidget {
  final User user;

  UserBalanceIndicator({this.user});

  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Balance:",
              style: TextStyle(fontSize: 10, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Text(
              "\$${user.balance.data}",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ]),
    );
  }
}
