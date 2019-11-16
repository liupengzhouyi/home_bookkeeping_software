class SonOverheadItems{

  int _id = 0;
  String _name = "";
  String _datetime = "";


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  String get datetime => _datetime;

  set datetime(String value) {
    _datetime = value;
  }

  set name(String value) {
    _name = value;
  }

  SonOverheadItems(name) {
    _id = 0;
    _name = name;
    _datetime = "${DateTime.now().year} - ${DateTime.now().month} - ${DateTime.now().day} ${DateTime.now().hour} - ${DateTime.now().minute} - ${DateTime.now().second}";
  }

  @override
  String toString() {
    return '{id: $_id, name: $_name, datetime: $_datetime}';
  }

}