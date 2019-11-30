/**
 * ListTile
 */
import 'package:flutter/material.dart';
import 'package:home_bookkeeping_software/poji/ListRunningAccount.dart';
import 'package:home_bookkeeping_software/poji/RunningAccount.dart';

import 'ShowList.dart';


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
        body: new Column(
          children: <Widget>[
            new MyCard(),
          ],
        ),
      ),
    );
  }

  _incrementCounter(BuildContext context) {
    // 使用 Navigator 跳转页面
    Navigator.pop(context);
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

  List<RunningAccount> list = new List();

  // RunningAccount
  void paly() {
    RunningAccount runningAccount = null;
    for (int i=0;i<10;i++) {
      runningAccount = new RunningAccount(
          id: i,
          necessaryconsume: 0,
          itemsnumber: 123,
          amount: 0,
          datetime: new DateTime.now(),
          remarks: "string",
          city: "string",
          latitude: 0,
          llongitude: 0
      );
      list.add(runningAccount);
    }
  }

  @override
  Widget build(BuildContext context) {
    paly();
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => new Text("test"),
    );
    /*new Column(
      children: <Widget>[
        // new ListRunningAccount(list: list,)

      ],*/
      /*children: <Widget>[
        ListTile(
          // Icon 图标
          leading: Icon(Icons.account_balance,color: Colors.lightBlue,),
          title: Text('${123.45}', style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('${DateTime.now()}' + '曾小晖：小灰灰：13885458655'),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new DayList(date: "2019-11-18",)
                )
            );
          },
        ),
        Divider(),// 分割线
        ListTile(
          leading: Icon(Icons.adjust,color: Colors.deepOrange),
          title: Text('${DateTime.now()}',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('小灰灰：13885458655'),
        ),
        Divider(), // 分割线
        ListTile(
          leading: Icon(Icons.adjust,color: Colors.lightBlue),
          title: Text('${DateTime.now()}}',style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('小灰灰：小灰灰：13885458655'),
        )
      ],
    );*/
  }
}