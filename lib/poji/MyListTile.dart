

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:home_bookkeeping_software/poji/RunningAccount.dart';

Future<String> _loadMemberJson() async {
  return await rootBundle.loadString('assets/jsondata.json');
}

// 解析JSON
void main() async {

  String memberListJson = await _loadMemberJson();

  List<dynamic> list = json.decode(memberListJson);

  RunningAccountList runningAccountList = RunningAccountList.fromJson(list);

  runningAccountList.runningAccountList
      .forEach((runningAccount) => print("${runningAccount.toString()}"));

}