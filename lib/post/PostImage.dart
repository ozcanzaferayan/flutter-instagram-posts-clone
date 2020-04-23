import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';

class PostImage extends StatelessWidget {
  final Post post;
  PostImage({this.post});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      post.imgUrl,
      height: 400,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
