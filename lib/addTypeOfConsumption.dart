
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_bookkeeping_software/poji/SonOverheadItems.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '添加子级消费明目'),
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

  String _name = "";
  SonOverheadItems sonOverHeadItems;


  TextEditingController _controller = new TextEditingController();

  void _incrementCounter() {
    setState(() {
      sonOverHeadItems = new SonOverheadItems(name: _controller.text);
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
            new TextFormField(
              controller: _controller,
              decoration: new InputDecoration(
                labelText: '消费明目',
              ),
            ),
            print(),
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

  Widget print() {
    if (sonOverHeadItems.toString() == null) {
      return Text("暂时为添加");
    } else {
      return Text(sonOverHeadItems.toString());
    }
  }
}

