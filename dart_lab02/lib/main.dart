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
// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// void main() {
//   var user = User('ali_ux', 'ali@email.com');
//   var secondUser = User('kawthar_alomran', 'kawthar@email.com');

//   print(user.username);
//   print(user.email);
//   print(secondUser.username);
//   print(secondUser.email);
// }

// Task 5.2
// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ImagePost extends Post {
//   final String imageUrl;

//   ImagePost(String author, this.imageUrl) : super(author);

//   @override
//   void render() {
//     print('Image post by $author at $imageUrl');
//   }
// }

// class VideoPost extends Post {
//     final String videoUrl;
//     VideoPost(String author, this.videoUrl) : super(author);

//     @override
//     void render() {
//     print('Video post by $author at $videoUrl');
//   }

// }
// void main() {
//   List<Post> feed = [
//     TextPost('khalid', 'Flutter is amazing!'),
//     ImagePost('omar', 'https://example.com/sunset.png'),
//     VideoPost('kawthar', 'https://example.com/sunrise.mp4'),
//   ];

//   for (final post in feed) {
//     post.render();
//   }
// }

// Task 5.3
// class Animal {
//   void makeSound() {
//     print('Some generic sound');
//   }
// }

// mixin Swimmer {
//   void swim() {
//     print('I can swim!');
//   }
// }

// class Dolphin extends Animal with Swimmer {}
// class Duck extends Animal with Swimmer {}

// void main() {
//   final dolphin = Dolphin();
//   dolphin.swim();
//   dolphin.makeSound();
//   final duck = Duck();
//   duck.swim();  
//   duck.makeSound();
// }

// Task 6.1 
// import 'person.dart';

// void main() {
//   final person = Person('Osama', 'Ali');
//   print(person.greet());

//   // The following line causes a compile-time error because
//   // _firstName is private to person.dart's library.
// //   print(person._firstName);
// }

// Task 6.2
// import 'person.dart';

// void main() {
//   final person = GreetingPerson('Ali', 'Hussian');
//   person.sayHi();
// }
// GreetingPerson can access _firstName and _lastName even though they start with _ because GreetingPerson is part of the same library as Person, and private members are accessible within the same library.

// Task 7.1
// class UserProfile {
//   final String name;
//   String? bio;

//   UserProfile(this.name, {this.bio});

//   String getDisplayBio() {
//     return bio ?? 'No bio provided.';
//   }
// }

// void main() {
//   final user1 = UserProfile('Ahmed');
//   final user2 = UserProfile('Layla', bio: 'Flutter Developer');
//   final user3 = UserProfile('Kawthar');

//   print(user1.getDisplayBio());
//   print(user2.getDisplayBio());
//   print(user3.getDisplayBio());
// }

// Task 7.2 
// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ApiResponse<T> {
//   final bool success;
//   final T? data;
//   final String? errorMessage;

//   ApiResponse(this.success, {this.data, this.errorMessage});
// }

// void main() {
//   final userResponse = ApiResponse<User>(
//     true,
//     data: User('khalid', 'khalid@example.com'),
//   );

//   print(userResponse.data?.username);

//   final postResponse = ApiResponse<Post>(
//     true,
//     data: TextPost('Turki', 'Flutter is awesome'),
//   );

//   if (postResponse.success) {
//     postResponse.data?.render();
//   } else {
//     print('Response failed: ${postResponse.errorMessage}');
//   }

//   final errorResponse = ApiResponse<User>(
//     false,
//     errorMessage: 'Unable to load user',
//   );

//   print(errorResponse.errorMessage);

//   final intResponse = ApiResponse<int>(
//     true,
//     data: 200,
//   );
//   print(intResponse.data);
// }

// Task 8.1
// Future<String> fetchData() async {
//   await Future.delayed(const Duration(seconds: 2));
//   return 'Fetched Data';
// }

// Future<void> main() async {
//   print('[1] Using async/await');
//   print('[2] Fetching data...');

//   final data = await fetchData();
//   print('[3] Result: $data');

//   print('[4] Using .then()');

//   fetchData().then((value) {
//     print('[6] .then() result: $value');
//   }).catchError((error) {
//     print('[7] Error: $error');
//   });

//   print('[5] Program continues after .then() call');
// }
// The order is 1, 2, 3, 4, 5, 6. 

// Task 8.2
// Stream<int> countStream(int to) async* {
//   for (int i = 1; i <= to; i++) {
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }

// Future<void> main() async {
//   print('Start counting...');

//   await for (final count in countStream(3)) {
//     print(count);
//   }

//   print('Done');
// }