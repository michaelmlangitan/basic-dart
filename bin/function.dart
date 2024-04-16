void sayHello() {
  print('Hello');
}

void sayHelloFor(String firstName, [String? lastName]) { // optional must use bracket [] and nullable key
  print('Hello $firstName ${lastName ?? ''}');
}

void sayHelloMultiOptional(String firstName, [String? middleName, String lastName = '']) {
  print('Hello $firstName ${middleName ?? ''} $lastName');
}

void useNamedParameters({String? firstName, String? lastName}) {
  print('Hello ${firstName ?? ''} ${lastName ?? ''} by useNamedParameters');
}

void useRequireNamedParameters({required String firstName, String? lastName}) {
  print('Hello $firstName ${lastName ?? ''} by useRequireNamedParameters');
}

int sum(int first, int second) => first + second;

String filterFunction(String name) {
  return '$name is filtered';
}

void functionAsParameter(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print(filteredName);
}

void main() {
  sayHello();
  sayHelloFor('Michael', 'Langitan');
  sayHelloFor('Alice');
  sayHelloMultiOptional('Bob');
  useNamedParameters(lastName: 'Langitan', firstName: 'Michael');
  useNamedParameters();
  useRequireNamedParameters(firstName: 'Michael');
  print('Try call the function short expression: sum is ${sum(1, 2)}');
  functionAsParameter('Michael', filterFunction);
  functionAsParameter('Langitan', (String name) => '$name is filtered by anonymous function');
  functionAsParameter('Alice', (String name) {
    return '$name is filtered by anonymous function 2';
  });
}