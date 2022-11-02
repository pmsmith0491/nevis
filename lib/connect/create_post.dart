import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/connect/post.dart';
import 'package:nevis_demo/connect/post_repository.dart';
import 'package:nevis_demo/profile/user.dart';
import 'package:nevis_demo/profile/user_respository.dart';

class CreatePost extends StatefulWidget {
  User user = UserRepository.user[1];

  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  String postText = " ";

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Text("Create Post"),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: CupertinoColors.systemGrey4, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/profile_images/img1.png")),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
              ),
              Text(widget.user.username.data,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              Padding(padding: EdgeInsets.only(right: 110)),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    Post newPost = Post(
                      username: widget.user.username.data,
                      profileImagePath: "assets/profile_images/img1.png",
                      postText: postText,
                    );
                    PostRepository.addPost(newPost);
                  });
                },
                child: Text("Post",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 100,
                child: CupertinoTextField(
                  textAlignVertical: TextAlignVertical.top,
                  placeholder: "What's on your mind?",
                  onSubmitted: (String newVal) {
                    setState(() {
                      postText = newVal;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
