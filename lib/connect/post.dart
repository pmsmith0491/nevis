import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/connect/comment.dart';
import 'package:nevis_demo/connect/comment_section.dart';
import 'package:nevis_demo/model/app_state_model.dart';
import 'package:provider/provider.dart';

class Post extends StatefulWidget {
  final String username;
  final String postText;
  final String profileImagePath;
  int likes = 0;
  int shares = 0;
  int comments = 0;

  Post({this.username, this.postText, this.profileImagePath});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool commenting = false;
  CommentSection commentSection = new CommentSection();
  String comment = " ";

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: (MediaQuery.of(context).size.width),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: CupertinoColors.systemGrey4, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.profileImagePath)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                    ),
                    Text(widget.username,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30)),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: Text(widget.postText)),
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.05,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: <Widget>[
                            Text("${widget.likes} Likes"),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.05,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: <Widget>[
                            CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  widget.likes++;
                                });
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(CupertinoIcons.check_mark_circled),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                  ),
                                  Text("Like"),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25),
                                  ),
                                ],
                              ),
                            ),
                            CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  widget.comments++;
                                  if (commenting)
                                    commenting = false;
                                  else
                                    commenting = true;
                                });
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(CupertinoIcons.conversation_bubble),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                  ),
                                  Text("Comment"),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25),
                                  ),
                                ],
                              ),
                            ),
                            CupertinoButton(
                              onPressed: () {
                                widget.shares++;
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(CupertinoIcons.share_up),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                  ),
                                  Text("Share"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Offstage(
                offstage: !commenting,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: CupertinoColors.systemGrey4, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/profile_images/img1.png")),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 3)),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 90,
                      padding: EdgeInsets.all(20),
                      child: CupertinoTextField(
                        placeholder: "Write a comment...",
                        onChanged: ((String newVal) {
                          comment = newVal;
                        }),
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        setState(() {
                          commentSection.addComment(Comment(
                            commentText: comment,
                          ));
                        });
                      },
                      child: Icon(CupertinoIcons.up_arrow,
                          color: Colors.blue, size: 30),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2),
        ),
        Offstage(
          offstage: !commenting,
          child: commentSection,
        ),
        Padding(
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }
}
