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
    );
  }
}

