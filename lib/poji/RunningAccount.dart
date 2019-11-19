
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


}