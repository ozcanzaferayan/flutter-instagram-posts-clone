import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';

class PostComments extends StatelessWidget {
  final Post post;

  PostComments({this.post});

  static const top = 5.0;
  static const left = 20.0;
  static const right = 20.0;
  static const bottom = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: GestureDetector(
          onTap: () {
            print('clicked');
          },
          child: Text(
            '${post.commentCount} yorumun tümünü gör',
            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
          ),
        ));
  }
}
