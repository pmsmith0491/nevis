import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fund extends StatefulWidget {
  final String fundName;
  final Color color;

  Fund({this.fundName = "Fund name", this.color = Colors.redAccent});

  @override
  _FundState createState() => _FundState();
}

class _FundState extends State<Fund> {
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        color: widget.color,
        width: MediaQuery.of(context).size.width / 1.5,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.fundName,
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
