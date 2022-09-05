void main(List<String> args) {
  testMap();
}

void testList() {
  var list = ['1', '2', '3', '4'];
  print(list);
  print(list.runtimeType);

  List<int> listInt = [];
  print(listInt);
  listInt.add(3);
  print(listInt);
  listInt = [];
  print(listInt);
}

void testSet() {
  var set = {'1', '2', '3', '4'};
  set.add('5');
  print(set);
}

void testMap() {
  var infoMap1 = {'name': 'why', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
  print('$infoMap2 ${infoMap2.runtimeType}');
  print(infoMap2.entries);
}
