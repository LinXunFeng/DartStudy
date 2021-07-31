String getName() {
  return 'lxf';
}

main(List<String> args) {
  // 明确声明
  String name = 'lxf';
  int age = 18;
  double height = 1.8;
  print('$name, $age, $height');

  // 类型推导（var/dynamic/const/final）
  var count = 1; // count的类型为int
  print(count.runtimeType); // int
  // count = "abc"; // 报错，无法为int类型赋值一个字符串

  // dynamic声明的变量可以赋值为任意类型
  // 在开发中一般不这种做，因为会带来潜在的危险
  dynamic type = 'lxf';
  print(type.runtimeType); // String
  type = 18;
  print(type.runtimeType); // int

  // final 和 const 都用来定义变量
  // 区别：
  //    const: 必须赋值，接收一个常量值（即编译期间就需要确定的值）
  //    final: 可以通过计算/函数动态获取值（即运行时能确定的值）
  final gender = 'male';
  // gender = 'female' // 报错
  const country = 'China';
  // country = 'USA'; // 报错

  final myName = getName();
  // const myName = getName(); // 报错
}
