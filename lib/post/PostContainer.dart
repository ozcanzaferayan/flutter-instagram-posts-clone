import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';
import 'package:flutterapp/post/PostActions.dart';
import 'package:flutterapp/post/PostComments.dart';
import 'package:flutterapp/post/PostDescription.dart';
import 'package:flutterapp/post/PostHeader.dart';
import 'package:flutterapp/post/PostImage.dart';
import 'package:flutterapp/post/PostLikes.dart';
import 'package:flutterapp/post/PostPublishDate.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  PostContainer({this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PostHeader(post: post),
        PostImage(post: post),
        PostActions(post: post),
        PostLikes(post: post),
        PostDescription(post: post),
        PostComments(post: post),
        PostPublishDate(post: post),
      ],
    );
  }
}
