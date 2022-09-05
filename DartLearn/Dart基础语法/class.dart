void main(List<String> args) {
  // final person = Person('name');
  // person.eat();
  // person.setColor = 'ssss';
  // print(person.getColor);

  final one = Man('name');
  one.eat();
}

class Person {
  String? name;
  String? color;

  Person(this.name);

  void eat() {
    print('$name 吃东西');
  }

  String get getColor {
    print('get');
    return color ?? '';
  }

  set setColor(String color) {
    print('set');
    this.color = color;
  }
}

class Man extends Person {
  Man(String? name) : super(name);

  @override
  void eat() {
    print('吃吃吃');
    super.eat();
  }
}
