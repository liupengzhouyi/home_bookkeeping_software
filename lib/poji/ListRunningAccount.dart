import 'package:flutter/material.dart';

import 'RunningAccount.dart';

class ListRunningAccount extends StatelessWidget{

  // 流水账列表
  List<RunningAccount> list;

  // 构造函数
  ListRunningAccount({this.list});

  // 模型列表
  List<ListTile> cardList;

  @override
  Widget build(BuildContext context) {

    for (RunningAccount item in list) {
      ListTile card = new ListTile(
        title: Text('${123.45}', style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text('${DateTime.now()}' + '曾小晖：小灰灰：13885458655'),
        leading: Icon(Icons.adjust,color: Colors.lightBlue,),
        // Icon 图标
      );
      cardList.add(card);

    }
    // TODO: implement build
    return new Column(
      children: cardList
    );
  }

  // RunningAccount





}