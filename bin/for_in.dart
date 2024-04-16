void main() {
  List<String> nameList = ['Michael', 'Langitan'];
  var nameSet = <String>{'Alice', 'Bob'};

  for(String name in nameList) {
    print(name);
  }

  for(String name in nameSet) {
    print(name);
  }
}