import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

void main() {
  runApp(new MyApp());
}

/**
 * 垂直listView
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'list';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Padding(
          padding: const EdgeInsets.all(30),
          child: new Center(
            child: new ListView(
              //控制方向 默认是垂直的
              children: <Widget>[
                new Center(
                  child: new FlutterCardWidget(information:"今日消费", informationI:"${123}"),
                ),
                new Center(
                  child: new FlutterCardWidget(information:"本月消费", informationI:"${123}"),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Center(
                      child: new Column(
                        children: <Widget>[
                          new FlutterCardWidget(information:"必要消费", informationI:"${123}"),
                        ],
                      ),
                    ),
                    new Center(
                      child: new Column(
                        children: <Widget>[
                          new FlutterCardWidget(information:"非必要消费", informationI:"${123}"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class FlutterCardWidget extends StatelessWidget {

  String information;
  String informationI;

  FlutterCardWidget({this.information, this.informationI});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      //z轴的高度，设置card的阴影
      elevation: 20.0,
      //设置shape，这里设置成了R角
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),),
      //对Widget截取的行为，比如这里 Clip.antiAlias 指抗锯齿
      clipBehavior: Clip.antiAlias,
      semanticContainer: false,
      child: getChild(information,informationI),
    );
  }

  getChild(String information, String informationI) {
    return Container(
      color: Colors.deepPurpleAccent,
      width: 150,
      height: 100,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "${information}",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Text(
            "${informationI}",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ],
      ),

    );
  }
}
