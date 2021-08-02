class Marker {
  String _color;

  String get color => _color;

  set color(String color) {
    _color = color;
  }

  Marker(this._color);
}

main(List<String> args) {
  final m = Marker('red');
  m.color = 'blue';
  print(m.color); // blue
}
