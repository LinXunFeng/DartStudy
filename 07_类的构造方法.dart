class Person {
  String name;
  int age;

  // 普通构造方法
  Person(this.name, this.age);
}

class Person1 {
  String? name;
  int? age;

  // 命名构造方法
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

class Person3 {
  String name;
  int age;

  Person3(this.name, this.age);

  // 重定向构造方法
  Person3.from(String name) : this(name, 0);
}

class Person4 {
  // 拥有常量构造方法的类中，所有的成员变量必须是final修饰的
  final String name;

  // 常量构造方法
  const Person4(this.name);
}

class Person5 {
  late String name;

  static final Map<String, Person5> _cache = <String, Person5>{};

  // 工厂构造方法
  factory Person5(String name) {
    var p = _cache[name];
    if (p == null) {
      p = Person5._internal(name);
      _cache[name] = p;
    }
    return p;
  }

  Person5._internal(this.name);
}

/**
 * 会报错：The default constructor of superclass 'Father' (called by the implicit default constructor of 'Son') must be a generative constructor, but factory found.
 * 
class Father {
  factory Father() {
    return Father._internal();
  }
  Father._internal();
}

class Son extends Father {}
 */

class Father {

  Father();

  factory Father.factory() {
    return Father._internal();
  }
  Father._internal();
}

class Son extends Father {}


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

  var p3 = const Person4('lxf');
  var p4 = const Person4('lxf');
  var p5 = const Person4('lxf1');
  const p6 = Person4('lxf');
  // 判断是不是同一个对象
  print(identical(p3, p4)); // true
  print(identical(p3, p5)); // false
  print(identical(p3, p6)); // true

  var p7 = Person5('lxf');
  var p8 = Person5('lxf');
  // 判断是不是同一个对象
  print(identical(p7, p8)); // true
}
