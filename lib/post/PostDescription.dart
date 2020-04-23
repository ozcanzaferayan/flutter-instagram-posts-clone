import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';

class PostDescription extends StatelessWidget {
  final Post post;

  PostDescription({this.post});

  static const top = 5.0;
  static const left = 20.0;
  static const right = 20.0;
  static const bottom = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: '${post.username}',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '  ${post.text}'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: top),
                child: GestureDetector(
              onTap: () {
                print('clicked');
              },
              child: Text(
                '...devamını oku',
                style: TextStyle(color: Colors.grey),
              ),
            ))
          ]),
    );
  }
}
