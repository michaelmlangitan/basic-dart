class ToStringClass {
  String? name;

  ToStringClass(this.name);

  @override
  String toString() {
    return 'ToStringClass{name: $name}';
  }
}

void main() {
  ToStringClass toStringClass = ToStringClass('Michael');
  print(toStringClass.toString());
  print(toStringClass);
}