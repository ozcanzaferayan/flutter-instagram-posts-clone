import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';

class PostActions extends StatelessWidget {
  final Post post;
  PostActions({this.post});
  static const top = 15.0;
  static const left = 20.0;
  static const right = 20.0;
  static const bottom = 0.0;
  static const icon = 25.0;
  static const iconLeft = 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: GestureDetector(
                        onTap: () {
                          print('clicked');
                        },
                        child: Image(
                          image: AssetImage('images/like.png'),
                          width: icon,
                          height: icon,
                        ))),
                Padding(
                    padding: EdgeInsets.only(left: iconLeft),
                    child: GestureDetector(
                        onTap: () {
                          print('clicked');
                        },
                        child: Image(
                          image: AssetImage('images/comment.png'),
                          width: icon,
                          height: icon,
                        ))),
                Padding(
                    padding: EdgeInsets.only(left: iconLeft),
                    child: GestureDetector(
                        onTap: () {
                          print('clicked');
                        },
                        child: Image(
                          image: AssetImage('images/dm.png'),
                          width: icon,
                          height: icon,
                        ))),
              ],
            ),
            GestureDetector(
                onTap: () {
                  print('clicked');
                },
                child: Image(
                  image: AssetImage('images/bookmark.png'),
                  width: icon,
                  height: icon,
                ))
          ],
        ));
  }
}
