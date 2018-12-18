void main(List<String> args) {
  var chair = Chair("padded", 3);

  print(chair.age);
  print(chair.color);
  print(chair.name);
}

abstract class Thing {
  String name;
  int age;
  Thing(this.name, this.age);
  String get color;
}

class Chair extends Thing {
  Chair(String name, int age) : super(name, age);

  @override
  String get color => "Blue";
}

class A {
  int a;
  int b;
}

class B {
  int c;
}

class C implements A, B {
  @override
  int a;

  @override
  int b;

  @override
  int c;
}
