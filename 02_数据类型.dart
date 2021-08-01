main(List<String> args) {
  // 整型
  int age = 18;
  int hexAge = 0x12;
  print(age); // 18
  print(hexAge); // 18

  // 浮点类型 double
  double height = 1.8;
  print(height); // 1.8

  // 字符串转数字
  var one = int.parse('1');
  var two = double.parse('12.5');
  print('$one ${one.runtimeType}'); // 1 int
  print('$two ${two.runtimeType}'); // 12.5 double

  // 数字转字符串
  var num1 = 123;
  var num2 = 123.456;
  var num1Str = num1.toString();
  var num2Str = num2.toString();
  var num2StrD = num2.toStringAsFixed(2); // 保留两位小数
  print('$num1Str ${num1Str.runtimeType}'); // 123 String
  print('${num2Str} ${num2Str.runtimeType}'); // 123.456 String
  print('${num2StrD} ${num2StrD.runtimeType}'); // 123.46 String

  // 布尔类型
  var isFlag = true;
  print('$isFlag ${isFlag.runtimeType}'); // true bool
  // Dart中没有非0即真或非空即真
  var msg = 'lxf';
  // if (msg) { // 报错 Conditions must have a static type of 'bool'.
  //   print(msg);
  // }

  // 字符串
  var s1 = 'hello lxf';
  var s2 = "hello lxf";
  // 多行字符串
  var s3 = '''
  hello
  hey
  lxf
  ''';
  // 字符串拼接
  var s4 = s1 + s2;
  print(s4); // hello lxfhello lxf
  var s5 = 's1 = $s1 and s4 = ${s1 + s2}';
  print(s5); // s1 = hello lxf and s4 = hello lxfhello lxf

  // 集合
  // List
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}'); // [a, b, c, d] List<String>

  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}'); // [1, 2, 3, 4] List<int>

  // Set
  // Set和List最大的两个不同就是：Set是无序的，并且元素是不重复的
  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');
  // {a, b, c, d} _CompactLinkedHashSet<String>

  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');
  // {1, 2, 3, 4} _CompactLinkedHashSet<int>

  // Map
  var infoMap1 = {'name': 'lxf', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');
  // {name: lxf, age: 18} _InternalLinkedHashMap<String, Object>

  Map<String, Object> infoMap2 = {'height': 1.8, 'country': 'China'};
  print('$infoMap2 ${infoMap2.runtimeType}');
  // {height: 1.8, country: China} _InternalLinkedHashMap<String, Object>

  // 集合共有的操作
  // 长度
  print(letters.length); // 4
  print(lettersSet.length); // 4
  print(infoMap1.length); // 2

  // 添加、删除、包含元素
  numbers.add(5);
  numbersSet.add(5);
  print('$numbers $numbersSet'); // [1, 2, 3, 4, 5] {1, 2, 3, 4, 5}

  numbers.remove(1);
  numbersSet.remove(1);
  print('$numbers $numbersSet'); // [2, 3, 4, 5] {2, 3, 4, 5}

  print(numbers.contains(2)); // true
  print(numbersSet.contains(2)); // true

  // List 特有
  // 由于List的元素是有序的，所有它还提供了一个删除指定索引位置上元素的方法removeAt
  // List根据index删除元素
  numbers.removeAt(3);
  print('$numbers'); // [2, 3, 4]

  // Map 特有
  // 1.根据key获取value
  print(infoMap1['name']); // lxf

  // 2.获取所有的entries
  print('${infoMap1.entries} ${infoMap1.entries.runtimeType}');
  // (MapEntry(name: lxf), MapEntry(age: 18)) MappedIterable<String, MapEntry<String, Object>>

  // 3.获取所有的keys
  print('${infoMap1.keys} ${infoMap1.keys.runtimeType}');
  // (name, age) _CompactIterable<String>

  // 4.获取所有的values
  print('${infoMap1.values} ${infoMap1.values.runtimeType}');
  // (lxf, 18) _CompactIterable<Object>

  // 5.判断是否包含某个key或者value
  print('${infoMap1.containsKey('age')} ${infoMap1.containsValue(18)}');
  // true true

  // 6.根据key删除元素
  infoMap1.remove('age');
  print('${infoMap1}'); // {name: lxf}
}
