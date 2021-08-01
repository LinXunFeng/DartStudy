main(List<String> args) {
  // if和else
  var isHot = true;
  if (isHot) {
    print('热门');
  } else {
    print('冷门');
  }

  // for
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  // for in 遍历集合
  var names = ['lxf', 'lin'];
  for (var name in names) {
    print(name);
  }

  //  while
  var index = 0;
  while (index < 5) {
    print('index -- $index');
    index++;
  }

  // do-while
  var index1 = 0;
  do {
    print('index1 -- $index1');
    index1++;
  } while (index1 < 10);

  // break
  var i = 1;
  while (i <= 10) {
    if (i % 5 == 0) {
      print("满足条件，退出循环");
      break;
    }
    // 继续下一个循环
    i++;
  }

  // continue
  var num = 0;
  var count = 0;
  for (num = 0; num <= 20; num++) {
    if (num % 2 == 0) {
      continue;
    }
    count++;
  }
  print("累加次数: $count"); // 累加次数: 10

  // switch-case
  var direction = 'east';
  switch (direction) {
    case 'east':
      print('东面');
      break;
    case 'south':
      print('南面');
      break;
    case 'west':
      print('西面');
      break;
    case 'north':
      print('北面');
      break;
    default:
      print('其他方向');
  }
}
