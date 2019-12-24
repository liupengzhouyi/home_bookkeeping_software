

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
  @override
  Widget build(BuildContext context) {
    //关键代码
    var card = new SizedBox(
      height: 610.0,  //设置高度
      child: new Card(
        elevation: 15.0,  //设置阴影
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14.0))),  //设置圆角
        child: new Column(  // card只能有一个widget，但这个widget内容可以包含其他的widget
          children: [
            new ListTile(
              title: new Text('标题',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              subtitle: new Text('子标题'),
              leading: new Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text('内容一',
                  style: new TextStyle(fontWeight: FontWeight.w500)),
              leading: new Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            new ListTile(
              title: new Text('内容二'),
              leading: new Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
            new PopupMenuButton(
              onCanceled: (){
                print('object');
              },
              onSelected: (v){
                print('object   $v');
              },
              itemBuilder: (BuildContext context) {
                List<PopupMenuEntry> list = List<PopupMenuEntry>();
                list.add(PopupMenuItem(
                  value: '1',
                  child: Text('Item 1'),
                ),);

                list.add(PopupMenuItem(
                  value: '2',
                  child: Text('Item 2'),
                ),);
                list.add(PopupMenuDivider(),);
                list.add(CheckedPopupMenuItem(
                  value: '3',
                  child: Text('Item 3'),
                  checked:true,
                ),);
                return list;
              },
            ),
          ],
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