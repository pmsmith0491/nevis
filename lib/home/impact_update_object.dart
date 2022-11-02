import 'package:flutter/cupertino.dart';
import 'package:nevis_demo/useful_widgets/column_line_divider.dart';

class ImpactUpdateObject extends StatelessWidget {
  final String companyTitle;
  final String update;

  ImpactUpdateObject({this.companyTitle, this.update});

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: CupertinoColors.inactiveGray)),
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: CupertinoColors.inactiveGray)),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.bell_solid,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '$companyTitle:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
              Padding(
                padding: EdgeInsets.only(right: 8),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width/2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('$update'),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
