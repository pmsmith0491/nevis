import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/app.dart';
import 'package:nevis_demo/invest/company_description.dart';
import 'package:nevis_demo/model/app_state_model.dart';
import 'package:nevis_demo/profile/user_data_object.dart';
import 'package:provider/provider.dart';

import 'investing_terminal.dart';

class FundInfo extends StatefulWidget {
  final String fundName;
  final List<CompanyDescription> companies;
  final Color color;
  final UserDataObject data;

  FundInfo(
      {this.fundName, this.companies, this.color = Colors.indigo, this.data});

  @override
  _FundInfoState createState() {
    return _FundInfoState();
  }
}

class _FundInfoState extends State<FundInfo> {
  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Container(
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    CupertinoButton(
                      child: Container(
                          width: 50,
                          height: 50,
                          child: Icon(
                            CupertinoIcons.back,
                            size: 40,
                          )),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Padding(padding: EdgeInsets.only(right: 80)),
                    Text(
                      widget.fundName,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                for (var i in widget.companies) i,
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                InvestingTerminal(
                  data: widget.data,
                ),
              ]),
            );

          default:
          // Do nothing. For now.
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return Container(
          color: widget.color,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: _buildSliverChildBuilderDelegate(model),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
