import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';
import 'package:nevis_demo/profile/user_respository.dart';
import 'package:nevis_demo/profile/user.dart';
import 'package:nevis_demo/useful_widgets/column_line_divider.dart';
import 'package:nevis_demo/useful_widgets/profile_header_bar.dart';
import 'impact_update_repository.dart';
import 'map.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
  User user = UserRepository.user[1];

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
              child: Image.asset(
                  'assets/nevis_logos/full_nevis_logo_black_text.png'),
            );
          case 1:
            return Column(
              children: <Widget>[
                ColumnLineDivider(),
                Text(
                  "Hello, ${user.username.data}.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                ColumnLineDivider(),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),
                Text("Your Investments:",
                    style:
                        TextStyle(fontSize: 30, color: CupertinoColors.black)),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                GoogleMapRect(),
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                ),
                Text("Updates From Your Investments:",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                ImpactUpdateRepository(),
              ],
            );
          default:
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
            CupertinoSliverNavigationBar(
              largeTitle: ProfileHeaderBar(user: user),
              backgroundColor: Colors.indigoAccent,
            ),
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
