class SonOverheadItems{

  int id;
  String name;
  String datetime;


  SonOverheadItems({this.name}) {
    init();
  }

  init() {
    this.id = 0;
    this.datetime = "${DateTime.now().year} - ${DateTime.now().month} - ${DateTime.now().day} ${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}";
  }


  

  @override
  String toString() {
    return '{id: $id, name: $name, datetime: $datetime}';
  }
  
}