import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';
import 'news_headline_tab.dart';
import 'news_headlines_repository.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() {
    return _NewsTabState();
  }
}

class _NewsTabState extends State<NewsTab> {

  List<NewsHeadlineTab> _headlineList = NewsHeadlinesRepository.loadHeadlines();

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        if (index < _headlineList.length - 1) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
            child: _headlineList[index],
          );
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
            const CupertinoSliverNavigationBar(
              largeTitle: Text('News', style: TextStyle(color: Colors.white),),
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
