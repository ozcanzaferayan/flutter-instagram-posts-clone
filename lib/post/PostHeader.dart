import 'package:flutter/material.dart';
import 'package:flutterapp/model/Post.dart';

class PostHeader extends StatelessWidget {
  final Post post;

  PostHeader({this.post});

  static const top = 12.0;
  static const bottom = 12.0;
  static const left = 20.0;
  static const right = 20.0;
  static const imageWidth = 25.0;
  static const iconMore = 15.0;
  static const marginStart = 10.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(imageWidth),
                    child: Image(
                      image: AssetImage('images/zafer.jpg'),
                      width: imageWidth,
                      height: imageWidth,
                    )),
                Container(
                  padding: EdgeInsets.only(left: marginStart),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "ozaferayan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "İstanbul, Türkiye",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ]),
                )
              ],
            ),
            GestureDetector(
                onTap: () {
                  print('clicked');
                },
                child: Image(
                  image: AssetImage('images/more.png'),
                  fit: BoxFit.cover,
                  height: iconMore,
                ))
          ],
        ));
  }
}
