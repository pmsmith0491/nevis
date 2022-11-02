import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnLineDivider extends StatelessWidget {
  ColumnLineDivider();

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(padding: EdgeInsets.only(top: 10)),
      Container(
        width: (MediaQuery.of(context).size.width) * 0.75,
        height: 1,
        color: CupertinoColors.inactiveGray,
      ),
      Padding(padding: EdgeInsets.only(bottom: 20)),
    ]);
  }
}
