void main() {
  Set<String> stringSet = {};
  // or Use: var stringSet = <String>{};

  // set is unique data and no index exists.
  stringSet.add('Michael');
  stringSet.add('Michael');
  stringSet.add('Michael');
  stringSet.add('Demit');

  print(stringSet);
  print(stringSet.length);

  stringSet.remove('Demit');
  print(stringSet);
  print(stringSet.length);
}