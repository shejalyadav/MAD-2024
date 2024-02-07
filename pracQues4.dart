// 1.  Implement a function that takes a required integer, a named integer argument with a default value,
// and a variable number of positional integers.
// The function should return the product of the required integer and the sum of the named and positional integers.


int product(List<int> list, {required int a, int b = 5}) {
  int sum = b;
  for (int i in list) {
    sum += i;
  }
  return a * sum;
}

void main() {
  List<int> list = [5, 6, 7, 8];
  print(product(a: 2, b: 6, list));
}

// 2. Create a function that accepts a required string, a named integer with a default value, and
//  an optional list of integers. The function should check if the length of the string is greater than the named integer and,
// if the optional list is provided, ensure that all elements are even.
// If the conditions are met, return true; otherwise, return false.

// bool check({required String str, int l = 5, List<int>? opt}) {
//   int length = str.length;
//   if (length > l) {
//     if (opt == null) {
//       return true;
//     } else {
//       bool optCheck = true;
//       for (int i in opt) {
//         if (i % 2 != 0) {
//           optCheck = false;
//           break;
//         }
//       }
//       if (optCheck) {
//         return true;
//       } else {
//         return false;
//       }
//     }
//   }
//   return false;
// }

// void main() {
//   List<int> list = [5, 6, 7, 8];
//   print(check(str:'shejal', l: 6, opt:list));
// }


//  3. Write following Functions
// These Functions are working on NumberSystem
// a) Decimal Number - Binary Conversion
// b) Binary Number - Decimal Conversion
// c) Decimal Number - Octal Conversion
// d) Octal number - Decimal Conversion
// e) Octal Number - Binary Conversion
// f) Decimal Number - Hexa Conversion
// g) Hexa Number - Decimal Conversion
// h) Hexa Number - Binary Conversion


// String decimalToBinary(int decimalNumber) {
//   return decimalNumber.toRadixString(2);
// }

// int binaryToDecimal(String binaryNumber) {
//   return int.parse(binaryNumber, radix: 2);
// }

// String decimalToOctal(int decimalNumber) {
//   return decimalNumber.toRadixString(8);
// }

// int octalToDecimal(String octalNumber) {
//   return int.parse(octalNumber, radix: 8);
// }

// String octalToBinary(String octalNumber) {
//   int decimalNumber = int.parse(octalNumber, radix: 8);
//   return decimalToBinary(decimalNumber);
// }

// String decimalToHex(int decimalNumber) {
//   return decimalNumber.toRadixString(16).toUpperCase();
// }

// int hexToDecimal(String hexNumber) {
//   return int.parse(hexNumber, radix: 16);
// }

// String hexToBinary(String hexNumber) {
//   int decimalNumber = int.parse(hexNumber, radix: 16);
//   return decimalToBinary(decimalNumber);
// }

// void main() {
//   int decimalValue = 42;
//   String binaryValue = '101010';
//   String octalValue = '52';
//   String hexadecimalValue = '2A';

//   print('a) Decimal to Binary: ${decimalToBinary(decimalValue)}');
//   print('b) Binary to Decimal: ${binaryToDecimal(binaryValue)}');
//   print('c) Decimal to Octal: ${decimalToOctal(decimalValue)}');
//   print('d) Octal to Decimal: ${octalToDecimal(octalValue)}');
//   print('e) Octal to Binary: ${octalToBinary(octalValue)}');
//   print('f) Decimal to Hexadecimal: ${decimalToHex(decimalValue)}');
//   print('g) Hexadecimal to Decimal: ${hexToDecimal(hexadecimalValue)}');
//   print('h) Hexadecimal to Binary: ${hexToBinary(hexadecimalValue)}');
// }