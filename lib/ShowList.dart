



import 'package:flutter/material.dart';
import 'package:home_bookkeeping_software/poji/RunningAccount.dart';

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
        child:CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    const Text('I\'m dedicating every day to you'),
                    const Text('Domestic life was never quite my style'),
                    const Text('When you smile, you knock me out, I fall apart'),
                    const Text('And I thought I was so smart'),
                  ],
                ),
              ),
            ),
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}


