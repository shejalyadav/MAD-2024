import 'dart:io'; //input output

void main() {
  print('Hello World!');

// varibale declaration

  int x = 100;
  print(x);

  print(
      'Value of x is: $x'); //$ interpolation -> replace placeholder with its value

  int y = 200;
  print('sum of x + y is: ${x + y}');

  int? value; // null-safety feature -> value can be null also ... gives compile time error if not used ?
  print(value);

//basic data type - int double string boolean Null
//advanced - list etc

  String name = 'Amit Kumar';

//multi line String
  String address = '''
   xysbxsajbc,
   dhesfjw,
   cbsjdvdusvjb
''';

  print(y.runtimeType);

  var z = 100.34; // type inferencing

  // z = true; //cannot do or "amit" -  cannot do ... double is already assigned .. now 100 can be done but not these 2
  print(z.runtimeType);

  dynamic c;

  c = 'John Doe'; //type inferencing

  print(c.runtimeType);

  c = 100; //type can be re-assigned but not in 'var'

  c = true;
  print(c.runtimeType);

  // name.substring(start)

  print('Enter your name: ');
  String? val = stdin.readLineSync(); //used ? beacuse error was there otherwise (null value can also be there so use ?)- readLine accept only non null value

  print('Name = $val');

  print('Enter your roll no: ');

  String? val2 = stdin.readLineSync();

  int roll = int.parse(val2.toString());

  print('Roll no = $roll'); 

  //?-> null values are allowed , preferred at intialization
  //!-> null values never assigned , used to resolve expression not preferred at initialization
}
