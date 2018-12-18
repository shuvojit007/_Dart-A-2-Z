main(List<String> args) {
  // var point = Point();

  // point.x = 50;
  // point.y = 50;
  // print(point.addTogether());

  var p1 = Point.fact("test");
  p1.x = 10;
  p1.y = 20;
  p1.save();

  var p2 = Point.fact("test2");
  var p3 = Point.fact("test");

  print(p3.x);
  print(p3.y);

  print(p1.toString());
  print(p3.toString());
  print(p1 == p3);
  print(p1.hashCode);
  print(p3.hashCode);
}

class Point {
  int x;
  int y;
  final String name;

  int _a;
  int _b;

  int get a => _a;
  int get b => _b;

  int get add => _a + b;

  void set a(val) {
    _a = val;
  }

  void set b(val) {
    _b = val;
  }

  //Constructor
  // Point(this.x,this.y);

  //named constructor
  // Point.zero(){
  //   x=0;
  //   y=0;
  // }

  //factory constructor
  static final Map<String, Point> _cache = <String, Point>{};
  Point(this.x, this.y, {this.name});
  Point.zero() : name = "zero" {
    x = 0;
    y = 0;
  }

  //factory constructor pretty useful to create singeltan pattern in dart
  factory Point.fact(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final point = Point(0, 0, name: name);
      _cache[name] = point;
      return point;
    }
  }

  void save() {
    _cache[name] = Point(x, y, name: name);
  }

  int addTogether() {
    return x + y;
  }

  @override
  String toString() {
    return "Point at ($_a, $_b) named: $name";
  }

  @override
  bool operator ==(other) =>
      other is Point && other._a == _a && other._b == _b && other.name == name;

  @override
  int get hashCode => super.hashCode;
}
