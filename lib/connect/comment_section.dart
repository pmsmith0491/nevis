import 'package:flutter/cupertino.dart';

import 'comment.dart';

class CommentSection extends StatefulWidget {

  List<Comment> comments = [

  ];

  void addComment(Comment comment) {
    comments.add(comment);
  }

  @override
 _CommentSectionState createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for(var i in widget.comments) i,
      ],
    );
  }

}

