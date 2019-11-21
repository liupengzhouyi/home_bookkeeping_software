import 'package:flutter/material.dart';

import 'fristPage/MainModel.dart';

void main() {
  runApp(new MyApp());
}

/**
 * 垂直listView
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'list';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: MainModel(todayAll: 120, todayNecessary: 60, todayUnnecessary: 60,
        monthAll: 3000, monthNecessary: 1000, monthUnnecessary: 2000,),
      ),
    );
  }
}