// void main() {
//   print("Hello, World!");
// }

// Task 1.1
// void main() {
//   int age = 21;
//   double height = 1.60;
//   bool isStudent = true;
//   String name = 'Kawthar';
//   List<int> scores = [90, 95, 100];

//   print('$name is $age years old and $height meters tall.');
//   print('Student: $isStudent');
//   print('Scores: $scores');
// }

// Task 1.2
// void main(){
//   var city = 'Dammam';
//   print('City: $city');
// }

// Task 2.1 
// void main() {
//   final String courseName = 'Mobile App Development';
//   const double pi = 3.14159;

//   dynamic anything = 'I can be any type!';
// // courseName = 'Web Development';
// // pi = 3.14;
//   print(courseName);
//   print(pi);
//   print(anything);

//   anything = 42;
//   print(anything);
// }

//1. What is the difference between final and const?
// final is a variable that set once at runtime. 
// const is a variable that set once at compile time.

//2. Why can dynamic change from String to int?
// dynamic is a variable that can hold values of any type, and it can be assigned different types at runtime.

// Task 3.1
// void greet(String name, String greeting) {
//   print('$greeting, $name!');
// }

// void greetWelcome(String name, [String greeting = 'Welcome']) {
//   print('$greeting, $name!');
// }

// void greetAgain({required String name, String? greeting}) {
//   print('${greeting ?? 'Hi'}, $name!');
// }

// void main() {
//   greet('Kawthar', 'Hello');
//   greetWelcome('Kawthar');
//   greetWelcome('Kawthar', 'Good morning');
//   greetAgain(name: 'Kawthar', greeting: 'Hello');
//   greetAgain(name: 'Kawthar');
//   greet("Kawthar", "Hi");
//   greetWelcome("Kawthar", "Good afternoon");
//   greetAgain(name: "Kawthar", greeting: "Good evening");
// }

// greet uses positional parameters. 
// greetWelcome uses optional positional parameters. 
// greetAgain uses named parameters.


// Task 3.2
// void performOperation(
//   int a,
//   int b,
//   int Function(int, int) operation,
// ) {
//   print(operation(a, b));
// }

// int add(int a, int b) => a + b;
// int subtract(int a, int b) => a - b;
// int multiply(int a, int b) => a * b;

// void main() {
//   performOperation(10, 5, add);
//   performOperation(10, 5, subtract);
//   performOperation(10, 5, multiply);
// }

// Task 4.1
// void main() {
//   var fruitsList = ['apples', 'oranges', 'bananas', 'mango'];
//   var grades = {'quiz1': 85, 'quiz2': 92, 'quiz3': 100};
//   var tags = {'dart', 'flutter', 'mobile', 'flutter', 'dart'};

//   print(fruitsList[1]);
//   print(grades['quiz2']);
//   print(tags);
// }
// The duplicate set item is not stored twice because a Dart Set contains only unique items. 


// Task 4.2
// void main() {
//   List<String> fruitsList = [];
//   List<String> moreFruits = ['grape', 'kiwi', "mango"];

//   List<String> allFruits = [
//     'watermelon',
//     if (fruitsList.isNotEmpty) ...fruitsList,
//     for (var fruit in moreFruits) fruit,
//   ];

//   print(allFruits);
// }
// The spread operator means that if the fruitsList is not empty, its elements will be added to the allFruits list. 

// Task 5.1

// Task 5.2

// Task 5.3