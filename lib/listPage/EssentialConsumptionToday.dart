import 'package:flutter/material.dart';

class EssentialConsumptionToday extends StatefulWidget {
  EssentialConsumptionToday({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _EssentialConsumptionToday createState() => _EssentialConsumptionToday();
}

class _EssentialConsumptionToday extends State<EssentialConsumptionToday> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("日期：${DateTime.now().year} - ${DateTime.now().month} - ${DateTime.now().day}"),
            Text("时间: ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}"),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
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
