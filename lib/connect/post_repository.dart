import 'package:flutter/cupertino.dart';

import 'post.dart';

class PostRepository extends StatefulWidget {
  List<Post> getPosts() {
    return _PostRepositoryState.posts;
  }
  static void addPost(Post post) {
    _PostRepositoryState.posts.add(post);
  }

  @override
  _PostRepositoryState createState() => _PostRepositoryState();
}

class _PostRepositoryState extends State<PostRepository> {
  static List<Post> posts = [
    Post(
      username: "bill2244",
      postText:
      "I am excited to announce I am investing in Jumo. I've been looking forward to this for awhile, and I can't wait to help continue their impressive work!",
      profileImagePath: 'assets/profile_images/img5.png',
    ),
    Post(
      username: "Caymen Ryder",
      postText:
      "Does anyone know anything about JameWorx? I'm thinking about investing...",
      profileImagePath: "assets/profile_images/img4.png",
    ),
    Post(
      username: "david_leibe_hart",
      postText: "Just invested in Apeel Industries. Highly recommend!",
      profileImagePath: "assets/profile_images/img3.png",
    ),
    Post(
      username: "Koech MaGuerk",
      postText:
      "ATTENTION FOLLOWERS: I am looking for partners for my new startup. PM me for details. Looking for someone with decent drone knowledge and at least a bachelors in Business or Technology.",
      profileImagePath: "assets/profile_images/img7.png",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var i in posts) i,
      ],
    );
  }
}
