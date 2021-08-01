class Person {
  String name;

  Person(this.name);

  void run() {
    print("$name is running");
  }

  void eat() {
    print('$name is eating');
  }

  void swim() {
    print('$name is swimming');
  }
}

main(List<String> args) {
  var num = 10;
  print(num / 3); // 除法：3.3333333333333335
  print(num ~/ 3); // 整除：3
  print(num % 3); // 取模：1

  // 赋值运算符
  var name = null;
  name ??= 'lxf';
  print(name); // lxf

  // var name1 = 'lin';
  // name1 ??= 'lxf';
  // print(name1); // lin

  // 条件运算符
  var temp = null;
  var other = temp ?? 'lxf';
  print(other); // lxf

  // 级联
  final p1 = Person('lxf');
  p1.run();
  p1.eat();
  p1.swim();

  final p2 = Person('lin')
    ..run()
    ..eat()
    ..swim();
}
