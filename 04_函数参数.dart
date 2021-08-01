// 命名可选参数
printInfo1(String name, {int? age, double? height}) {
  print('name = $name age = $age height = $height');
}

// 如果确定传入的参数不能为null，则需要加 required 关键字
// 如果传入的参数可能为null，则参数类型后面需要加 ?
// printInfo1(String name, {required int age, required double height}) {}

printInfo3(String name, {int age = 18, double height = 1.8}) {
  print('name = $name age = $age height = $height');
}

// 位置可选参数
printInfo2(String name, [int? age, double? height]) {
  print('name = $name age = $age height = $height');
}

printInfo4(String name, [int age = 18, double height = 1.8]) {
  print('name = $name age = $age height = $height');
}

main(List<String> args) {
  // 命名可选参数
  printInfo1('lxf'); // name = lxf age = null height = null
  printInfo1('lxf', age: 18); // name = lxf age = 18 height = null
  printInfo1('lxf', age: 18, height: 1.8); // name = lxf age = 18 height = 1.8
  printInfo1('lxf', height: 1.8); // name = lxf age = null height = 1.8

  printInfo3('lxf'); // name = lxf age = 18 height = 1.8

  // 位置可选参数
  printInfo2('lxf'); // name = lxf age = null height = null
  printInfo2('lxf', 18); // name = lxf age = 18 height = null
  printInfo2('lxf', 18, 1.8); // name = lxf age = 18 height = 1.8

  printInfo4('lxf'); // name = lxf age = 18 height = 1.8
}
