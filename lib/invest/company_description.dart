import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyDescription extends StatefulWidget {
  final String companyName;
  final String description;

  CompanyDescription(
      {this.companyName = "Generic Company", this.description = "A company"});

  @override
  _CompanyDescriptionState createState() => _CompanyDescriptionState();
}

class _CompanyDescriptionState extends State<CompanyDescription> {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width / 1.2,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              Text(widget.companyName,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Padding(padding: EdgeInsets.all(10)),
              Text(widget.description,
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              Padding(padding: EdgeInsets.all(10))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
