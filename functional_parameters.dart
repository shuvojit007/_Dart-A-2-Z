      // 1. Required Parameters
    // 2. Optional Positional Parameters
          // Postional
          // Named
          // Default 
void main() {
  findVolume(10, breadth: 5, height: 20);
  print("");

  findVolume(10,
      height: 20, breadth: 5); // Sequence doesn't matter in Named Parameter

      // 1. Required Parameters
    // 2. Optional Positional Parameters
	printCities("New York", "New Delhi", "Sydney");
	print("");

	printCountries("USA");  // You can skip the Optional Positional Parameters
}

int findVolume(int length, {int breadth, int height}) {
  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth * height}");
}
// Required Parameters
void printCities(String name1, String name2, String name3) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}

// Optional Positional Parameters
void printCountries(String name1, [String name2, String name3]) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}