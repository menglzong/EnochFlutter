void main(List<String> args) {
  print('hello word');
  testNum();
}

void test() {
  String name = 'meng';
  int age = 20;
  name = 'ling';
  print('name: $name, age: $age');
}

//变量修饰符
void testVar() {
  var name = 'meng';
  name = '$name';
  // name = 89;

  dynamic temp = 'meng';
  temp = 30;

  final age = 30;
  // age = 18;
}

//基础数据类型
void testNum() {
  var age = 18;
  var money = 12.22;
  print('age: ${age.runtimeType}');
  print('money: ${money.runtimeType}');
  print(age.toString());
  print(money.toString());

  var ageStr = '18';
  print(int.parse(ageStr));
}
