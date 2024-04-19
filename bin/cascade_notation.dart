class User {
  String? username;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main() {
  // without cascade notation
  // var user = User();
  // user.username = 'michael';
  // user.name = 'Michael';
  // user.email = 'michael@email.com';

  // with cascade notation
  var user = User()
  ..username = 'michael'
  ..name = 'Michael'
  ..email = 'michael@email.com';

  User? nullableUser = createUser()
    ?..username = 'michael'
    ..name = 'Michael'
    ..email = 'michael@email.com';
}