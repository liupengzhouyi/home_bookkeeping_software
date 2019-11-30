import 'package:flutter/material.dart';

import '../ShowList.dart';
import 'RunningAccount.dart';

class ListRunningAccount extends StatelessWidget{

  // 流水账列表
  List<RunningAccount> list;

  // 构造函数
  ListRunningAccount({this.list});

  // 模型列表
  List<ListTile> cardList;

  // 返回样式列表
  ListView listView;

  @override
  Widget build(BuildContext context) {

    listView = new ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, i) => new Text("123"),
      /*new ListTile(
        title: Text('${list[i].amount}', style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text('${list[i].datetime}' + '${list[i].remarks}'),
        leading: Icon(Icons.adjust,color: Colors.lightBlue,),
        // Icon 图标
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new DayList(date: "2019-11-18",)
              )
          );
        },
      ),*/
    );

    // TODO: implement build
    return listView;
  }

  itemDividerRow (context, int i) {
    if (i.isOdd) {//是奇数
      return new Divider( //返回分割线
        height: 1.0,
      );
    } else {
      i = i ~/ 2;
      return new ListTile(
        title: Text('${list[i].amount}', style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text('${list[i].datetime}' + '${list[i].remarks}'),
        leading: Icon(Icons.adjust,color: Colors.lightBlue,),
        // Icon 图标
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new DayList(date: "2019-11-18",)
              )
          );
        },
      );
    }
  }
}