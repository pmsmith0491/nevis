import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:nevis_demo/app.dart';
import '../model/app_state_model.dart';
import 'package:nevis_demo/model/app_state_model.dart';
import 'package:nevis_demo/profile/account_tab.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() {
    return _ProfileTabState();
  }
}

class _ProfileTabState extends State<ProfileTab> {
  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Image.asset(
                        'assets/news_tab_images/virta.jpeg',
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: CupertinoColors.white, width: 7),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/test_images/zodiac.png'))),
                        ),
                        CupertinoButton(
                            child: Text('Logout'),
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                            }),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/AccountTab');
                          },
                          child: Icon(
                            CupertinoIcons.gear_big,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
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
        return CustomScrollView(
          slivers: <Widget>[
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: _buildSliverChildBuilderDelegate(model),
              ),
            )
          ],
        );
      },
    );
  }
}
