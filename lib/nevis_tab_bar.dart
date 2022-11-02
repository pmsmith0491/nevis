import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nevis_demo/home/home_tab.dart';
import 'package:nevis_demo/connect/connect_tab.dart';
import 'package:nevis_demo/invest/invest_tab.dart';
import 'package:nevis_demo/news/news_tab.dart';
import 'package:nevis_demo/profile/account_tab.dart';
import 'package:nevis_demo/profile/profile.dart';

class NevisTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.cyanAccent,
        inactiveColor:  CupertinoColors.systemGrey4,
        backgroundColor: Colors.indigoAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
            icon: Text('\$', style: TextStyle(fontSize: 20)),
            title: Text('Invest'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text('Connect'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            title: Text('Profile'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: HomeTab(),
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: NewsTab(),
              );
            });
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: InvestTab(),
              );
            });
            break;
          case 3:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: ConnectTab(),
              );
            });
            break;
          case 4:
            returnValue = CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: AccountTab(),
              );
            });
            break;
        }
        return returnValue;
      },
    );
  }
}
