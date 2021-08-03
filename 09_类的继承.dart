class Animal {
  String name;

  Animal(this.name);

  eat() {
    print("吃吃吃");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  eat() {
    print("$name 在吃");
  }
}

main(List<String> args) {
  var dog = Dog("Spike");
  dog.eat(); // 吃吃吃
  print(dog.name); // Spike
}
