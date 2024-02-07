// 1. Make a two-player Rock-Paper-Scissors game against computer. Ask for player’s input, compare them, print out a message to the winner.

import 'dart:io';

void main() {
  print('Welcome to Rock-Paper-Scissors Game!');

  print('\nPlayer 1, enter your choice (Rock, Paper, or Scissors):');
  String player1Choice = stdin.readLineSync()!;

  print('\nPlayer 2, enter your choice (Rock, Paper, or Scissors):');
  String player2Choice = stdin.readLineSync()!;

  print('\nPlayer 1 chose: $player1Choice');
  print('Player 2 chose: $player2Choice');

  determineWinner(player1Choice, player2Choice);
}

void determineWinner(String player1Choice, String player2Choice) {
  if ((player1Choice == 'rock' && player2Choice == 'scissors') ||
      (player1Choice == 'paper' && player2Choice == 'rock') ||
      (player1Choice == 'scissors' && player2Choice == 'paper')) {
    print('\nPlayer 1 wins!');
  } else if ((player2Choice == 'rock' && player1Choice == 'scissors') ||
             (player2Choice == 'paper' && player1Choice == 'rock') ||
             (player2Choice == 'scissors' && player1Choice == 'paper')) {
    print('\nPlayer 2 wins!');
  } else {
    print('\nIt\'s a tie!');
  }
}

// 2. Write a function that checks if a given Set is a subset of another Set.

// void main() {
//   Set<int> set1 = {1, 2, 3, 4, 5, 6};
//   Set<int> set2 = {3, 4};

//   bool isSubset = set2.every((element) => set1.contains(element));

//   print("Is set2 a subset of set1? $isSubset");
// }

// 3. Develop a function that performs a union operation on two sets without using built-in set union methods.

// Set<int> unionSets(Set<int> set1, Set<int> set2) {
//   Set<int> result = {};

//   for (int element in set1) {
//     result.add(element);
//   }

//   for (int element in set2) {
//     if (!result.contains(element)) {
//       result.add(element);
//     }
//   }
//   return result;
// }

// void main() {
//   Set<int> setA = {1, 2, 3, 4, 5};
//   Set<int> setB = {4, 5, 6, 7, 8};

//   Set<int> unionResult = unionSets(setA, setB);

//   print('Union of $setA and $setB: $unionResult');
// }

// 4. Implement a function to find the intersection of two sets without using built-in set intersection methods.

// Set<int> intersectionSets(Set<int> set1, Set<int> set2) {
//   Set<int> result = {};

//   for (int element in set1) {
//     if (set2.contains(element)) {
//       result.add(element);
//     }
//   }

//   return result;
// }

// void main() {
//   Set<int> setA = {1, 2, 3, 4, 5};
//   Set<int> setB = {4, 5, 6, 7, 8};

//   Set<int> intersectionResult = intersectionSets(setA, setB);

//   print('Intersection of $setA and $setB: $intersectionResult');
// }

// 5. Create a program that simulates a library catalog system using a map. Allow users to add books, check out books, and view the current status of books.

// import 'dart:io';

// void main() {
//   Map<String, bool> libraryCatalog = {};

//   while (true) {
//     print('\nLibrary Catalog System');
//     print('1. Add Book');
//     print('2. Check Out Book');
//     print('3. View Library Status');
//     print('4. Exit');
//     print('Enter your choice (1-4):');

//     String choice = stdin.readLineSync()!;

//     switch (choice) {
//       case '1':
//         addBook(libraryCatalog);
//         break;
//       case '2':
//         checkOutBook(libraryCatalog);
//         break;
//       case '3':
//         viewLibraryStatus(libraryCatalog);
//         break;
//       case '4':
//         print('Exiting the Library Catalog System. Goodbye!');
//         return;
//       default:
//         print('Invalid choice. Please enter a number between 1 and 4.');
//     }
//   }
// }

// void addBook(Map<String, bool> libraryCatalog) {
//   print("Enter book title:");
//   String title = stdin.readLineSync()!;

//   if (libraryCatalog.containsKey(title)) {
//     print("Book already exists.");
//   } else {
//     libraryCatalog[title] = true;
//     print("Book added successfully!");
//   }
// }

// void checkOutBook(Map<String, bool> libraryCatalog) {
//   print("Enter book title to check out:");
//   String title = stdin.readLineSync()!;

//   if (libraryCatalog.containsKey(title)) {
//     libraryCatalog[title] = false;
//     libraryCatalog.remove(title);
//     print("Book checked out successfully!");
//   } else {
//     print("Book not found.");
//   }
// }

// void viewLibraryStatus(Map<String, bool> libraryCatalog) {
//   if (libraryCatalog.isEmpty) {
//     print("The catalog is empty.");
//   } else {
//     print("Library Status:");
//     libraryCatalog.forEach((title, available) {
//       String status = available ? "Available" : "Checked Out";
//       print("$title: $status");
//     });
//   }
// }
