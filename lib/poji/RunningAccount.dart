
// 流水账的实体
class RunningAccount {

  int id;
  int necessaryconsume;
  int itemsnumber;
  double amount;
  DateTime datetime;
  String remarks;
  String city;
  double latitude;
  double llongitude;

  // 构造函数
  RunningAccount({this.id, this.necessaryconsume, this.itemsnumber, this.amount,
    this.datetime, this.remarks, this.city, this.latitude, this.llongitude});

  @override
  String toString() {
    return 'RunningAccount{id: $id, necessaryconsume: $necessaryconsume, itemsnumber: $itemsnumber, amount: $amount, datetime: $datetime, remarks: $remarks, city: $city, latitude: $latitude, llongitude: $llongitude}';
  }
  
  /*factory RunningAccount.fromJson(Map<String, dynamic> json) {
    return RunningAccount(id:json['id'], necessaryconsume:json['necessaryconsume'], itemsnumber:json['itemsnumber'], amount:json['amount'],
        datetime:DateTime.now(), remarks:json['remarks'], city:json['city'], latitude:json['latitude'], llongitude:json['llongitude']);
  }*/

  factory RunningAccount.fromJson(Map<String, dynamic> json) {
    return RunningAccount(id:1, necessaryconsume:1, itemsnumber:1, amount:12.3,
        datetime:DateTime.now(), remarks:json['remarks'], city:json['city'], latitude:34, llongitude:45);
  }

}

class RunningAccountList {
  List<RunningAccount> runningAccountList;


  RunningAccountList({this.runningAccountList});

  factory RunningAccountList.fromJson(List<dynamic> listjson) {
    List<RunningAccount> runningAccountList =
    listjson.map((value) => RunningAccount.fromJson(value)).toList();
    return RunningAccountList(runningAccountList: runningAccountList);
  }
}