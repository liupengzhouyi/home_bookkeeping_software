

import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter/material.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  // ID
  // int id;
  // 是否是必要消费
  //int necessaryconsume;
  String necessaryconsume;
  // 子类消费明目ID
  int itemsnumber;
  // 金额
  // double amount;
  String amount;
  // 日期
  DateTime datetime;
  // 备注
  String remarks;
  // 城市
  String city;
  // 经度
  double latitude;
  //纬度
  double llongitude;

  String _name;

  String _password;

  var _selectType;


  @override
  Widget build(BuildContext context) {
    //关键代码
    var card = new SizedBox(
      height: 610.0,  //设置高度
      child: new Card(
        elevation: 15.0,  //设置阴影
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),  //设置圆角
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text('Flutter Form'),
          ),
          floatingActionButton: new FloatingActionButton(
            child: new Text('提交'),
          ),
          body: new Container(
            padding: const EdgeInsets.all(16.0),
            child: new Form(
              child: new Column(
                children: <Widget>[
                  // 消费日期-时间
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'Your Name',
                    ),
                    onSaved: (val) {
                      _name = val;
                    },
                  ),
                  // 子类消费明目
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: '子类消费明目',
                    ),
                    obscureText: true,
                    onSaved: (val) {
                      _password = val;
                    },
                  ),
                  // 金额
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: '金额',
                    ),
                    // obscureText: true,
                    onSaved: (val) {
                      amount = val;
                    },
                  ),
                  // 备注
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'Password',
                    ),
                    // obscureText: true,
                    onSaved: (val) {
                      remarks = val;
                    },
                  ),
                  // necessaryconsume
                  new TextFormField(
                    decoration: new InputDecoration(
                      labelText: 'Your Name',
                    ),
                    onSaved: (val) {
                      necessaryconsume = val;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 5.0, // tabbar的阴影
      ),
      body: Center(
        child: card,
      ),
    );
  }
}