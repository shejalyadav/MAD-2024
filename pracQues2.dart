
// 1. Create a list variable and store 6 three digit integer values in it. Create another list which contains reverse elements of this list.

void main() {
  // Create a list of six three-digit integers
  List<int> originalList = [123, 456, 789, 321, 654, 987];

  // Create another list with reverse elements without using map
  List<int> reversedList = [];

  for (int i = 0; i < originalList.length; i++) {
    int number = originalList[i];
    int reversedNumber = int.parse(number.toString().split('').reversed.join());
    reversedList.add(reversedNumber);
  }

  // Print the original and reversed lists
  print('Original List: $originalList');
  print('Reversed List: $reversedList');
}


//  2.  Use the following List functions in the above list:
//     First
//     isEmpty
//     isNotEmpty
//     Length
//     Last
//     Reverse
//     Single
//     add()    //   list.add(<element>);
//     addAll()     //list.addAll([<element list separated by comma>]);
//     insert()     //list.insert(<index>,<value>); 
//     insertAll()   //list_names.insertAll(<index>, [<list_of_value>]);
//     replaceRange()    //list_names.replaceRange(int start_val, int end_val, [<list_of_value>]);
//     remove()   //list_names.remove(value)
//     removeAll()   //list_name.removeAt(int index)
//     removeLast()  //list_names.removeLast() 
//     removeRange()   //list_names. removeRange(int start, int end);



// 3. Cerate the following set variables and perform the following operations:
//     var a = <int>{10,11,12,13,14,15};
//     var b = <int>{12,18,29,43};
//     var c = <int>{2,5,10,11,32};
//     a. Union of a, b and c
//     b. Intersection of a and b
//     c. Difference of b and c


// void main() {
//   var a = <int>{10, 11, 12, 13, 14, 15};
//   var b = <int>{12, 18, 29, 43};
//   var c = <int>{2, 5, 10, 11, 32};

//   // Union of a, b, and c
//   var unionSet = a.union(b).union(c);
//   print('Union of a, b, and c: $unionSet');

//   // Intersection of a and b
//   var intersectionSet = a.intersection(b);
//   print('Intersection of a and b: $intersectionSet');

//   // Difference of b and c
//   var differenceSet = b.difference(c);
//   print('Difference of b and c: $differenceSet');
// }
