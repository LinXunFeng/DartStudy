enum Color { red, blue, green }

main(List<String> args) {
  print(Color.red); // Color.red

  print(Color.red.index); // 0 枚举的下标从0开始
  print(Color.blue.index); // 1

  print(Color.values); // [Color.red, Color.blue, Color.green]

  var color = Color.green;
  switch (color) {
    case Color.red:
      print("红");
      break;
    case Color.blue:
      print("蓝");
      break;
    case Color.green:
      print("绿");
      break;
  }
}
