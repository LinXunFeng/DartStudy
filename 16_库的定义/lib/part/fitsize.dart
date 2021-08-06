// 定义库名
library fitsize;

import 'dart:io'; // 导入其它库，只能放在这个位置

// 关联分库
part 'fitsize_part1.dart';
part 'fitsize_part2.dart';

void fit() {
  // 可以访问分库下的私有成员

  part1PublicMethod();
  _part1PrivateMethod();

  part2PublicMethod();
  _part2PrivateMethod();
}
