void main() {
  // data type is required
  String name = 'Michael M Langitan';
  String country;
  country = "indonesian";

  // auto data type with var is require a value
  var theNumber = 21;

  // final is cannot re-declare variable
  final finalArray = [1, 2, 3];
  // finalArray = 'Change final var'; // <-- This will error: The final variable 'finalArray' can only be set once.
  // finalArray = [2, 3, 4]; // <-- this will error: The final variable 'finalArray' can only be set once.
  finalArray[0] = 7; // this will success

  const constArray = [1, 2, 3];
  // constArray = [1, 2, 3]; // error: Constant variables can't be assigned a value.
  // constArray[0] = 7; // Error: Unsupported operation: Cannot modify an unmodifiable list

  // when variable (using late key) is not call, then function getValue is never run,
  // when without the late key, then function getValue will run.
  late var containOfGetValue = getValue();

  print(name);
  print(country);
  print(theNumber);
  print(finalArray);
  print(constArray);
  print('Get Value is Called?');
  print(containOfGetValue); // try comment this, and check awesome late key
}

String getValue() {
  print('Get Value is called');
  return "The value";
}