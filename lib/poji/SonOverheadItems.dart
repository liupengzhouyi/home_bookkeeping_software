class SonOverheadItems{

  int _id;
  String _name;
  String _datetime;


  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  String get datetime => _datetime;

  set datetime(String value) {
    _datetime = value;
  }

  setName(String value) {
    _name = value;
  }


  SonOverheadItems() {
    this._id = 0;
    this._datetime = "${DateTime.now().year} - ${DateTime.now().month} - ${DateTime.now().day} ${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}";
  }

  @override
  String toString() {
    return '{id: $_id, name: $_name, datetime: $_datetime}';
  }

}