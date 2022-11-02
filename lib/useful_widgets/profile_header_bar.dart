import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nevis_demo/home/user_balance_indicator.dart';
import 'package:nevis_demo/profile/user.dart';

class ProfileHeaderBar extends StatelessWidget {
  final User user;

  ProfileHeaderBar({this.user});

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(user.username.data,
            style: TextStyle(fontSize: 15, color: Colors.white)),
        Padding(
          padding: EdgeInsets.only(right: 30),
        ),
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: CupertinoColors.systemGrey4, width: 2),
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/profile_images/img1.png")),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 50),
        ),
        UserBalanceIndicator(
          user: user,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
        ),
      ],
    );
  }
}
