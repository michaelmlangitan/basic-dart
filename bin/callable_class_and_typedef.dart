class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int call() => first + second;
}

typedef Total = Sum; // typedef for class
typedef Filter = String Function(String); // typedef for function

void sayHello(String name, Filter filter) {
  print('Hello ${filter(name)}');
}

void main() {
  var sum = Sum(1, 2);
  var total = Total(10,10);

  print(sum());
  print(total());
  print('-------------');

  sayHello('Michael', (name) => name.toUpperCase());
}