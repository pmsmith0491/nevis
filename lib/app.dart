import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/profile/account_tab.dart';

import 'invest/fund_info.dart';
import 'model/app_state_model.dart';
import 'package:nevis_demo/login/login_screen.dart';
import 'package:nevis_demo/nevis_tab_bar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/Login': (_) => LoginScreen(),
        '/NevisTabBar': (_) => NevisTabBar(),
        '/AccountTab': (_) => AccountTab(),
        '/FinTechFund' : (_) => FundInfo(),
      },
    );
  }
}
