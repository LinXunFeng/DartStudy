num sum1(num num1, num num2) {
  return num1 + num2;
}

// 省略了类型也可以正常工作，但是不建议这么做
sum2(num1, num2) {
  return num1 + num2;
}

// 如果函数的实现只有一个表达式，则可以使用箭头语法
sum3(num num1, num num2) => num1 + num2;

main(List<String> args) {
  print(sum1(1, 2)); // 3
  print(sum2(1, 2)); // 3
  print(sum3(1, 2)); // 3
}
