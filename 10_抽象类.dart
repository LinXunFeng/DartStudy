abstract class Building {
  getHeight();

  getArea() {
    print("hello");
  }
}

class Tower extends Building {
  @override
  getHeight() {
    print("55m");
  }
}

main(List<String> args) {
  var tower = Tower();
  tower.getArea(); // hello
  tower.getHeight(); // 55m
}
