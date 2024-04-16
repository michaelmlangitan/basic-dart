void main() {
  List<String> stringList = ['Michael', 'Langitan'];
  var integerList = <int>[];

  stringList.add('Demit');
  // stringList

  print(stringList);
  print('Number items in stringList is ${stringList.length}');
  print(stringList[1]);
  stringList[1] = 'Changed';
  stringList.removeAt(2);
  print(stringList);

  var duplicatedValues = ['Michael', 'Michael', 'Michael'];
  print(duplicatedValues);
}