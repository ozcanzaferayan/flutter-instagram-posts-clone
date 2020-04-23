import 'package:flutter/material.dart';
import 'package:flutterapp/post/PostActions.dart';
import 'package:flutterapp/post/PostContainer.dart';
import 'package:flutterapp/post/PostImage.dart';

import 'model/Post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        //
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var post = Post(
      username: 'ozaferayan',
      placeName: 'İstanbul, Türkiye',
      imgUrl: 'https://images.unsplash.com/photo-1575016794663-110bb4b5400d?w=750&q=80',
      likeCount: 103,
      commentCount: 42,
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      publishedAt: '2019-11-24T17:28:31.123Z');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[PostContainer(post: post),PostContainer(post: post)  ],
        ),
      ),
    );
  }
}
