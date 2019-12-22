import 'package:flutter/material.dart';

void main() => runApp(new HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}


/*int id;
int necessaryconsume;
int itemsnumber;
double amount;
DateTime datetime;
String remarks;
String city;
double latitude;
double llongitude;*/

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();


  // int id;
  // 是否是必要消费
  int necessaryconsume;
  // 子类消费明目ID
  int itemsnumber;
  // 金额
  double amount;
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


  void _forSubmitted() {
    var _form = _formKey.currentState;

    if (_form.validate()) {
      _form.save();
      print(_name);
      print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter data',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Form'),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _forSubmitted,
          child: new Text('提交'),
        ),
        body: new Container(
          padding: const EdgeInsets.all(16.0),
          child: new Form(
            key: _formKey,
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Your Name',
                  ),
                  onSaved: (val) {
                    _name = val;
                  },
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  validator: (val) {
                    return val.length < 4 ? "密码长度错误" : null;
                  },
                  onSaved: (val) {
                    _password = val;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}