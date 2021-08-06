import 'lib/part/fitsize.dart' as fitsize;
import 'lib/export/lxf_utils.dart' as utils;

main(List<String> args) {
  fitsize.fit();
  /**
   * 结果：
   * 
   * part1 public method
   * part1 private method
   * part2 public method
   * part2 private method
   */

  print(utils.sum(1, 2)); // 3
  utils.writeFile('lxf.jpg', '/lxf/Desktop/'); // 写入文件 /lxf/Desktop/lxf.jpg
}
