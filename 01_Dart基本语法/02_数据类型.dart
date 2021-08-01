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
}
