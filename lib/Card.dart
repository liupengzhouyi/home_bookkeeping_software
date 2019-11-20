/**
 * ListTile
 */
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ListTile",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("ListTile"),
        ),
        body: new MyCard(),
      ),
    );
  }
}

class MyCard extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return new MyCardState();
  }
}

class MyCardState extends State<MyCard> {

  var _throwShotAway = false;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        ListTile(
          title: Text('${123.45}', style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('${DateTime.now()}' + '曾小晖：小灰灰：13885458655'),
          leading: Icon(Icons.adjust,color: Colors.lightBlue,),
          // Icon 图标
        ),
        Divider(),// 分割线
        ListTile(
          title: Text('${DateTime.now()}',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('小灰灰：13885458655'),
          leading: Icon(Icons.adjust,color: Colors.deepOrange),
        ),
        Divider(), // 分割线
        ListTile(
          title: Text('${DateTime.now()}',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('小灰灰：小灰灰：13885458655'),
          leading: Icon(Icons.adjust,color: Colors.lightBlue),
        )
      ],
    );
  }
}