import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/connect/connect_tab.dart';
import 'package:nevis_demo/invest/invest_tab.dart';
import 'package:nevis_demo/profile/user_data_object.dart';
import 'package:nevis_demo/profile/user_respository.dart';

class InvestingTerminal extends StatefulWidget {
  final UserDataObject data;

  InvestingTerminal({this.data});

  @override
  _InvestingTerminalState createState() => _InvestingTerminalState();
}

class _InvestingTerminalState extends State<InvestingTerminal> {
  double moneySpecified = 0.0;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Add/Remove Money from Funds", style: TextStyle(fontSize: 20)),
        Padding(
          padding: EdgeInsets.all(20),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.black,
            width: MediaQuery.of(context).size.width / 1.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                  child: Icon(
                    CupertinoIcons.plus_circled,
                    color: Colors.green,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      UserRepository.user[1].balance.data =
                          UserRepository.user[1].balance.data - moneySpecified;
                      widget.data.data = widget.data.data + moneySpecified;
                    });
                  },
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 60,
                  child: CupertinoTextField(
                    textAlign: TextAlign.center,
                    placeholder: "\$${widget.data.data}",
                    placeholderStyle:
                        TextStyle(fontSize: 20, color: Colors.grey),
                    onChanged: (String newVal) {
                      moneySpecified = double.parse(newVal);
                    },
                  ),
                ),
                CupertinoButton(
                  child: Icon(
                    CupertinoIcons.minus_circled,
                    color: Colors.red,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      UserRepository.user[1].balance.data =
                          UserRepository.user[1].balance.data + moneySpecified;
                      widget.data.data = widget.data.data - moneySpecified;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
        ),
      ],
    );
  }
}
