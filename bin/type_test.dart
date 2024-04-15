void main() {
  var variable = '7';
  print(variable is bool);
  // print(variable as int); // type 'String' is not a subtype of type 'int' in type cast
  print(variable as String);
  print(variable is! double);
}