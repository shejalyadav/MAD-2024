// 1.  Develop a Dart function named getMathFunctions that returns a map of mathematical functions. The keys of the map should be strings representing mathematical operations ("add", "subtract", "multiply", "divide"), and the values should be closure functions that perform the corresponding operations on two integers.

// import 'dart:io';

// void main() {
//   int x = int.parse(stdin.readLineSync()!);
//   int y = int.parse(stdin.readLineSync()!);
//   Map<String, Function> map = getmathFunction();
//   print(map["add"]!(10, 20));
// }

// Map<String, Function> getmathFunction() {
//   int add(int x, int y) {
//     return x + y;
//   }

//   ;

//   int sub(int x, int y) {
//     return x - y;
//   }

//   ;

//   int mul(int x, int y) {
//     return x * y;
//   }

//   ;

//   int div(int x, int y) {
//     return (x ~/ y);
//   }

//   ;

//   return {"add": add, "sub": sub, "mul": mul, "div": div};
// }

// 2 .  Write a Dart function named factorialFunction that takes an integer n as an argument and returns a closure function. The closure function, when called with an integer x, should compute the factorial of x using the value of n as the upper limit for recursion.

// Function factorial(int n) {
//   int f = 1;

//   int fact(int x) {
//     if (x <= 1 || x <= n) {
//       return 1;
//     } else {
//       return x * fact(x - 1);
//     }
//   }

//   return fact;
// }

// void main() {
//   Function f = factorial(8);
//   print(f(10));
// }

// 3. Write a Dart function named filterList that takes a list of integers and a closure function as arguments. The closure function should determine whether an integer should be included in the filtered list. The filterList function should return a new list containing only the integers that satisfy the condition specified by the closure function.

// List<int> filterList(List<int> l, Function f) {
//   List<int> li = [];
//   for (int i in l) {
//     if (f(i)) {
//       li.add(i);
//     }
//   }
//   return li;
// }

// Function filter() {
//   bool filterOdd(int x) {
//     if (x % 2 == 0) {
//       return false;
//     } else {
//       return true;
//     }
//   }

//   ;

//   return filterOdd;
// }

// void main() {
//   List<int> list = [1, 2, 3, 4, 5, 6, 7];
//   List<int> l1 = filterList(list, filter());
//   print(l1);
// }

// 4. Create a Dart function named generateFibonacciFunction that returns a closure function. The closure function, when called with an integer n, should return the nth Fibonacci number.

// void main() {
//   print(generateFibonacciFunction()(4));
// }

// Function generateFibonacciFunction() {
//   int fibonacci(int n) {
//     int x = 0, y = 1;
//     if (n == 0) return 0;
//     if (n == 1) return 1;
//     for (int i = 2; i < n; i++) {
//       int z = x;
//       x = y;
//       y = z + x;
//     }
//     return y;
//   }
  
//   return fibonacci;
// }


// 5. Write a Dart function named processNumbers that takes a list of integers and two closure functions (mapper and filter). The mapper function should transform each integer in the list, and the filter function should filter out specific integers based on a condition. The processNumbers function should return a new list with the transformed and filtered integers.

void main() {
  List<int> list = [2, 3, 4, 5];
  print(processNumbers(list, mapper(), filtered()));
}

List processNumbers(List<int> list, Function mapper, Function filtered) {
  List<int> filteredList = [];
  for (int i in list) {
    int j=mapper(i);
    if (filtered(j)) filteredList.add(j);
  }

  return filteredList;
}

Function filtered() {
  bool checkEven(int i) {
    if (i % 2 == 0) return true;
    return false;
  }

  return checkEven;
}

Function mapper() {
  int mulFour(int i) {
    return i * 4;
  }

  return mulFour;
}


