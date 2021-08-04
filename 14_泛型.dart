main(List<String> args) {
  // List
  var myList = ['lxf', 18];
  print(myList.runtimeType); // List<Object>

  // List使用泛型，限制类型
  var numList = <int>[10, 20];
  List<String> nameList = ["lxf", "lin"]; // 一般使用这种

  // 报错: The element type 'int' can't be assigned to the list type 'String'.
  // List<String> nameList = ["lxf", "lin", 18];

  // Map
  var msgMap = {1: 'one', 'name': 'lxf', 'age': 18};
  print(msgMap.runtimeType); // _InternalLinkedHashMap<Object, Object>

  var infoMap = <String, String>{'name': 'lxf', 'age': '18'};
  // Map<String, String> profileMap = {'name': 'lxf', 'age': '18'}; // 一般使用这种

  // 报错：The element type 'int' can't be assigned to the map value type 'String'.
  // Map<String, String> profileMap = {'name': 'lxf', 'age': 18};

  Point p = Point<double>(10.5, 20.5);
  print(p.x.runtimeType); // double

  Size s = Size<int>(20, 10);
  // 报错：A value of type 'Size<String>' can't be assigned to a variable of type 'Size<num>'.
  // Size s1 = Size<String>("20", "10");
}

class Point<T> {
  T x;
  T y;

  Point(this.x, this.y);
}

class Size<T extends num> {
  T width;
  T height;

  Size(this.width, this.height);
}
