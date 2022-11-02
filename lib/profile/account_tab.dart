import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';
import 'package:nevis_demo/login/login_screen.dart';
import 'package:nevis_demo/nevis_tab_bar.dart';
import 'package:nevis_demo/profile/account_tab_settings.dart';
import 'user_respository.dart';
import 'user.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() {
    return _AccountTabState();
  }
}

class _AccountTabState extends State<AccountTab> {
  bool canEdit = false;
  String editButtonText = "Edit";
  User user = UserRepository.user[1];

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(50)),
                      Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10)),
                          Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: CupertinoColors.systemGrey4, width: 2),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/profile_images/img1.png")),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          Text(user.username.data,
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 30)),
                      CupertinoButton(
                        onPressed: () {
                          if (!canEdit) {
                            setState(() {
                              canEdit = true;
                              editButtonText = "Done";
                            });
                          } else {
                            setState(() {
                              canEdit = false;
                              editButtonText = "Edit";
                            });
                          }
                        },
                        child: Text(editButtonText),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  AccountTabSettings(
                    user: user,
                    canEdit: canEdit,
                  ),
                ],
              ),
            );
          case 1:
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CupertinoButton(
                    child: Text("Privacy Policy"),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 120.0),
                  ),
                  CupertinoButton(
                      child: Text("Logout"),
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).pop();
                      }),
                ],
              ),
            );
          default:
        }
        // Do nothing. For now.
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
            const CupertinoSliverNavigationBar(
              largeTitle: Text(
                'Account',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.indigoAccent,
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: _buildSliverChildBuilderDelegate(model),
              ),
            ),
          ],
        );
      },
    );
  }
}
