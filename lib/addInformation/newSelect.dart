import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MainAPP());
enum Department { treasury, state }

class MainAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MyApp();
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyState();
  }
}

class MyState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("dialog Demo"),
          ),
          body: new Center(
            child: Column(
              children: <Widget>[
                new SimpleDialog(
                  title: new Text("对话框标题"),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {},
                      child: const Text("第一行信息"),
                    ),
                    SimpleDialogOption(
                      onPressed: () {},
                      child: const Text("第二行信息"),
                    )
                  ],
                ),
                new AlertDialog(
                  content: new SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[Text("是否要删除？"), Text("一旦删除数据不可恢复!")],
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("确定"),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: Text("取消"),
                      onPressed: () {},
                    )
                  ],
                ),
                new CupertinoAlertDialog(
                  content: new SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[Text("IOS风格"),Text("是否要删除？"), Text("一旦删除数据不可恢复!")],
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text("确定"),
                      onPressed: (){},
                    ),
                    CupertinoDialogAction(
                      child: Text("取消"),
                      onPressed: (){},
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }

  void _show() {}

  Future<Null> _askedToLead(BuildContext context) async {
    switch (await showDialog<Department>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select assignment'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.treasury);
                },
                child: const Text('Treasury department'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('State department'),
              ),
            ],
          );
        })) {
      case Department.treasury:
      // Let's go.
      // ...
        break;
      case Department.state:
      // ...
        break;
    }
  }
}