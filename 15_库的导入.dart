// 导入dart标准库
// import 'dart:io';
// import 'dart:html';
import 'dart:math';

// 导入自定义库
import 'libs/math_utils.dart';
// import 'libs/math_utils.dart' as MathUtils; // 别名
// import 'libs/math_utils.dart' show sum, multiply; // show: 显示指定的内容
// import 'libs/math_utils.dart' hide sum; // hide: 隐藏指定的内容

// 导入第三方库
import 'package:dio/dio.dart';

/**
 * 延迟加载
 * 
 * 作用：在需要的时候才进行加载
 * 好处：减少app的启动时间
 * 使用：使用 deferred as
 */
import 'package:dio/dio.dart' deferred as diolib;

main(List<String> args) async {
  print(sum(10, 20)); // 30
  print(multiply(10, 20)); // 200
  // print(MathUtils.sum(10, 20)); // 30
  // print(MathUtils.multiply(10, 20)); // 200

  // 使用第三方库
  getHttp();

  // 调用loadLibrary方法来加载延迟加载的库
  await diolib.loadLibrary();
  diolib.Dio().get('http://www.google.cn');
}

void getHttp() async {
  try {
    var response = await Dio().get('http://www.google.cn');
    print(response);
  } catch (e) {
    print(e);
  }
}
