
import 'package:flutter/material.dart';

class MainModel extends StatelessWidget {

  double todayAll;

  double todayNecessary;

  double todayUnnecessary;

  double monthAll;

  double monthNecessary;

  double monthUnnecessary;


  MainModel({this.todayAll, this.todayNecessary, this.todayUnnecessary,
    this.monthAll, this.monthNecessary, this.monthUnnecessary});

  @override
  Widget build(BuildContext context) {
    return new Padding(
          padding: const EdgeInsets.all(30),
          child: new Center(
            child: new ListView(
              //控制方向 默认是垂直的
              children: <Widget>[
                new Center(
                  child: new FlutterCardWidget(information:"今日消费", informationI:"${this.todayAll}"),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Center(
                      child: new Column(
                        children: <Widget>[
                          new FlutterCardWidget(information:"今日必要消费", informationI:"${this.todayNecessary}", type: 1,),
                        ],
                      ),
                    ),
                    new Center(
                      child: new Column(
                        children: <Widget>[
                          new FlutterCardWidget(information:"今日非必要消费", informationI:"${this.todayUnnecessary}", type: 1,),
                        ],
                      ),
                    ),
                  ],
                ),
                new Center(
                  child: new FlutterCardWidget(information:"本月消费", informationI:"${this.monthAll}"),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Center(
                      child: new Column(
                        children: <Widget>[
                          new FlutterCardWidget(information:"本月必要消费", informationI:"${this.monthNecessary}", type: 1,),
                        ],
                      ),
                    ),
                    new Center(
                      child: new Column(
                        children: <Widget>[
                          new FlutterCardWidget(information:"本月非必要消费", informationI:"${this.monthUnnecessary}", type: 1,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}



class FlutterCardWidget extends StatelessWidget {

  String information;
  String informationI;

  int type;

  FlutterCardWidget({this.information, this.informationI, this.type});

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
      child: new Text("jvgh"),
      //child: getChild(information,informationI),
    );
  }

  getChild(String information, String informationI) {
    double width = 300.0;
    double titleSize = 28;
    double numberSize  = 32;
    if (type == 1) {
      width = 150.0;
      titleSize = 20;
      numberSize  = 28;
    }
    return Container(
      color: Colors.deepPurpleAccent,
      width: width,
      height: 100,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "${information}",
            style: TextStyle(fontSize: titleSize, color: Colors.white),
          ),
          Text(
            "${informationI}",
            style: TextStyle(fontSize: numberSize, color: Colors.white),
          ),
        ],
      ),

    );
  }
}
