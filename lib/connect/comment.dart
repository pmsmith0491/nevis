import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  final String commentText;
  final String username;
  final String profilePhotoPath;

  Comment(
      {this.commentText = "Default comment text",
      this.profilePhotoPath = "assets/profile_images/img1.png",
      this.username = "mike_murphy2011"});

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: CupertinoColors.systemGrey4, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.profilePhotoPath)),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 3)),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 90,
                    padding: EdgeInsets.only(top: 30),
                    child: Text(widget.username,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    padding: EdgeInsets.all(20),
                    child: Text(widget.commentText),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2),
        ),
      ],
    );
  }
}
