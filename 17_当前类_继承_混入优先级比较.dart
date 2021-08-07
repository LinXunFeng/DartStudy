class A {
  void method() {
    print('I am A');
  }
}

class B {
  void method() {
    print('I am B');
  }
}

class C extends A with B {
  // void method() {
  //   print('I am C');
  // }
}

main(List<String> args) {
  var c = C();
  /**
   * C 有无自己的 method 方法实现：
   *  - 有：打印：I am C
   *  - 无：打印：I am B
   */
  c.method();
}