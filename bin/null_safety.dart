void main() {
  int? number;

  print(number ?? 0);
  print(number?.toDouble() ?? 'null of number');
}