import 'customer.dart';

main() {
//LINQ --> Language Integrated Query
//Functional Collections

  var numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  WithoutLINQ(numbers);
  WithLinQ(numbers);
  customers.forEach(print);
  //We can do this
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
