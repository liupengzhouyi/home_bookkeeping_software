import 'package:flutter/material.dart';

import 'package:home_bookkeeping_software/poji/testData.dart';


class NonessentialConsumptionToday extends StatefulWidget {
  NonessentialConsumptionToday({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NonessentialConsumptionToday createState() => _NonessentialConsumptionToday();
}

class _NonessentialConsumptionToday extends State<NonessentialConsumptionToday> {
  int _counter = 0;

  String _time = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
      _time = "时间: + ${DateTime.now().hour} - ${DateTime.now().minute} - ${DateTime.now().second}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Center(
          child: MyCard(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
