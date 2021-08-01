class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Person1 {
  String? name;
  int? age;

  Person1.withArgs(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

// late关键字
class Person2 {
  late String name;
  late int age;
}

main(List<String> args) {
  // var p1 = Person1();
  var p1 = Person1.withArgs('lxf', 18);
  print(p1.name);
  print(p1.age);

  var p2 = Person2();
  p2.name = 'lxf';
  print(p2.name); // lxf
  // print(p2.age);
  // 报错：LateInitializationError: Field 'age' has not been initialized.
}
