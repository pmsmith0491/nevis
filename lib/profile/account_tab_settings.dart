import 'package:flutter/cupertino.dart';

import 'user.dart';
import 'labeled_account_textfield.dart';
import 'package:nevis_demo/useful_widgets/label_with_text.dart';
import 'package:nevis_demo/useful_widgets/column_line_divider.dart';

class AccountTabSettings extends StatelessWidget {
  final User user;
  final bool canEdit;

  AccountTabSettings({this.user, this.canEdit});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Offstage(
            offstage: !canEdit,
            child: Column(
              children: <Widget>[
                LabeledTextField(
                  title: "Username",
                  data: user.username,
                ),
                ColumnLineDivider(),
                LabeledTextField(
                  title: "Password",
                  data: user.password,
                ),
                ColumnLineDivider(),
                LabeledTextField(
                  title: "Location",
                  data: user.location,
                ),
                ColumnLineDivider(),
                LabeledTextField(
                  title: "Occupation",
                  data: user.occupation,
                ),
                ColumnLineDivider(),
                Text(
                  "Bank Information",
                  style: TextStyle(
                      fontSize: 25, color: CupertinoColors.inactiveGray),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                LabeledTextField(title: 'Bank', data: user.bankTitle),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                LabeledTextField(title: 'Card Number', data: user.cardNumber),
                ColumnLineDivider(),
              ],
            )),
        Offstage(
          offstage: canEdit,
          child: Column(
            children: <Widget>[
              LabelWithText(title: 'Username', text: user.username.data),
              ColumnLineDivider(),
              LabelWithText(title: 'Password', text: user.password.data),
              ColumnLineDivider(),
              LabelWithText(title: 'Location', text: user.location.data),
              ColumnLineDivider(),
              LabelWithText(title: 'Occupation', text: user.occupation.data),
              ColumnLineDivider(),
              Text(
                "Bank Information",
                style: TextStyle(
                    fontSize: 25, color: CupertinoColors.inactiveGray),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              LabelWithText(title: 'Bank', text: user.bankTitle.data),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              LabelWithText(title: 'Card Number', text: user.cardNumber.data),
              ColumnLineDivider(),
            ],
          ),
        ),
      ],
    );
  }
}
