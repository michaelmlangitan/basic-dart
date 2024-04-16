void main() {
  Map<String, String> name = {};
  // var name = Map<String, String>();
  // var name = <String, String>{}; // map literal


  name['first'] = 'Michael';
  name['last'] = 'Langitan';
  name['middle'] = 'Secret';
  name.remove('middle');

  print(name);
  print(name['first']);
  print(name.length);
}