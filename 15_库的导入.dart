// 导入dart标准库
// import 'dart:io';
// import 'dart:html';
import 'dart:math';

// 导入自定义库
import 'libs/math_utils.dart';

// 导入第三方库
import 'package:dio/dio.dart';

main(List<String> args) {
  print(sum(10, 20)); // 30
  print(multiply(10, 20)); // 200

  getHttp();
}

void getHttp() async {
  try {
    var response = await Dio().get('http://www.google.cn');
    print(response);
  } catch (e) {
    print(e);
  }
}
