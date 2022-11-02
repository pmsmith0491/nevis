import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/connect/create_post.dart';
import 'package:nevis_demo/connect/post.dart';
import 'package:nevis_demo/connect/post_repository.dart';
import 'package:provider/provider.dart';

import '../model/app_state_model.dart';

class ConnectTab extends StatefulWidget {
  @override
  _ConnectTabState createState() {
    return _ConnectTabState();
  }
}

class _ConnectTabState extends State<ConnectTab> {
  List<Post> posts = PostRepository().getPosts();

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    if (index < 1) CreatePost(),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    PostRepository(),
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                  ],
                ),
              ],
            );
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
          color: CupertinoColors.systemGrey4,
          child: CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text("Connect", style: TextStyle(color: Colors.white),),
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
          ),
        );
      },
    );
  }
}
