



import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DayList(date: "2019-11-18",),
    );
  }
}



class DayList extends StatelessWidget {

  String date;

  DayList({this.date});

  double a;
  double b;
  double c;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("${this.date}消费清单"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("消费总金额:${a}"),
            Text("必要消费金额${b}"),
            Text("非必要消费金额${c}"),
            Text("---Over---"),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
