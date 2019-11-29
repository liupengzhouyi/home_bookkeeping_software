import 'package:flutter/material.dart';
import 'package:home_bookkeeping_software/Card.dart';

import 'MainModel.dart';

void main() {
  runApp(new MyApp());
}

/**
 * 垂直listView
 */
class MyApp extends StatelessWidget {

  String title = "临时约法";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Column(
          children: <Widget>[
            new MainModel(
              todayAll: 120,
              todayNecessary: 60,
              todayUnnecessary: 60,
              monthAll: 3000,
              monthNecessary: 1000,
              monthUnnecessary: 2000,
            ),
          ],
        ),
      ),
    );
  }
}