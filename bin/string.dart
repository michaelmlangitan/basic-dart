void main() {
  String firstName = 'Michael'; // single quote is recommended.
  String lastName = "Langitan";
  String fullName = '$firstName ${lastName}';
  String escapeStringInterpolation = 'This will escape the \'quote\' and \$dollar';
  String joinString = firstName + lastName;
  String joinWithSpaceOnlyString = 'One' 'Two' 'Three';
  var multiLineString = '''
  This is multiline
Spacing matters
      don't forget Spacing is matters
  ''';



  print(firstName);
  print(lastName);
  print(fullName);
  print(escapeStringInterpolation);
  print(joinString);
  print(joinWithSpaceOnlyString);
  print(multiLineString);
}