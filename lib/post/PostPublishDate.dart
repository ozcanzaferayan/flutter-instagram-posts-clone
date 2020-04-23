import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';
import 'package:flutterapp/utils/prettyTime.dart';

class PostPublishDate extends StatelessWidget {
  final Post post;

  PostPublishDate({this.post});

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
            '${prettyTime(post.publishedAt)}',
            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
          ),
        ));
  }
}
