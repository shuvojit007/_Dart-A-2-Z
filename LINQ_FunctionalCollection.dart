import 'customer.dart';

main() {
//LINQ --> Language Integrated Query
//Functional Collections

  var numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  //WithoutLINQ(numbers);
  //WithLinQ(numbers);

  var whereResult = customers.where((c) => c.customerName.contains("Shuvojit"));
  //whereResult.forEach(print);
  //We can do this

  //Projection Operartors
  var projResult = customers.map((c) => c.customerName);
  //projResult.forEach(print);

  //Projection Operator  (Select many - Compound )
  var R = customers
      .expand((c) => c.Orders)
      .where((o) => o.orderTotal > 2000)
      .take(3);
  //R.forEach(print);

  //SetOperator
  var num = [1, 2, 3];
  var num2 = [1, 2, 6];
  var intersec = num.toSet().intersection(num2.toSet());
  intersec.forEach(print);
  var union = num.toSet().union(num2.toSet());
  union.forEach(print);
}

void WithoutLINQ(List numbers) {
  for (var i in numbers) {
    if (i > 5) {
      print(i);
    }
  }
}

void WithLinQ(List numbers) {
  var results = numbers.where((n) => n > 5);
  results.forEach(print);
}
