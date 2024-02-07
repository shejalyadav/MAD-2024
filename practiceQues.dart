//  1. Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';
void main(){
print('Enter String:');
    // User enter a string or a number
    String? original =  stdin.readLineSync();

   // then we will reverse the input
   String? reverse = original!.split('').reversed.join('');

  // then we will compare
  if(original == reverse)
  {
    print('Its A Palindrome');

  }else{
    print('Its A Not Palindrome');
  }

}

// 2. Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

// import 'dart:io';
// import 'dart:math';

// void main() {
//   Random random = Random();
//   int randomNumber = random.nextInt(100) + 1;

//   print("Guess the number between 1 and 100:");
//   String? userInput = stdin.readLineSync();

//   if (userInput != null) {
//     int userGuess = int.parse(userInput.toString());

//     if (userGuess < randomNumber) {
//       print("Too low! Try again.");
//     } else if (userGuess > randomNumber) {
//       print("Too high! Try again.");
//     } else {
//       print("Congratulations! You guessed the correct number: $randomNumber");
//     }
//   } else {
//     print("Invalid input. Please enter a valid number.");
//   }

//   print("The correct number was: $randomNumber");
// }

// 3. Write a program that asks the user how many Fibonnaci numbers to generate and then generates them.

// import 'dart:io';

// void main() {
//   print("How many Fibonacci numbers do you want? ");
//   int chosenNumber = int.parse(stdin.readLineSync()!);

//   List<int> result = fibonacciNumbers(chosenNumber);
//   print(result);
// }

// // Function to calulcate the Fibonacci numbers
// List<int> fibonacciNumbers(int chosenNumber) {
//   List<int> fibList = [1, 1];
//   for (var i = 0; i < chosenNumber; i++) {
//     fibList.add(fibList[i] + fibList[i + 1]);
//   }
//   return fibList;
// }

// 4. Write a program that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.

// import 'dart:math';

// void main() {
//   final random = Random();
//   List<int> randList = List.generate(5, (_) => random.nextInt(20));

//   print("Initial list is $randList\n");
//   print("Cleaned list is ${removeDuplicates(randList)}");
// }

// List<int> removeDuplicates(List<int> initialList) {
//   return initialList.toSet().toList();
// }

// 5. Write a program that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

// import 'dart:io';

// void main() {
//   print("Please give a sentence: ");
//   String sentence = stdin.readLineSync()!;

//   reverseSentence(sentence);
// }

// void reverseSentence(String sentence) {
//   String a = sentence.split(" ").reversed.toList().join(" ");
//   print(a);
// }
