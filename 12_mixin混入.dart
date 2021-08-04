// mixin Runner {} // 可以不使用on，默认是 on Object

mixin Runner on Animal {
  run() {
    print('跑起来了');
  }
}

class Animal {
  run() {
    print('Animal run');
  }
}

class SuperPeople extends Animal with Runner {}

// 报错：'Runner' can't be mixed onto 'Object' because 'Object' doesn't implement 'Animal'.
// class Person with Runner {}

// 报错：Classes can only extend other classes.
// class Person extends Runner {} // Runner无法被继承

main(List<String> args) {
  var p = SuperPeople();
  p.run(); // 跑起来了
}
