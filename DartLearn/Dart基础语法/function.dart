import 'helloword.dart';

void main(List<String> args) {
  func('name');
  func2('name', age: 17);
  test(() {
    print('object');
  });
}

// 命名可选参数
void func(String name, {int? age, double? height}) {
  print('name: $name, age: $age');
}

void func2(String name, {required int age, double? height}) {
  print('name: $name, age: $age');
}

void test(Function fun) {
  fun();
}
