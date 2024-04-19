enum Gender {male, female}

class User {
  String name;
  Gender? gender;

  User(this.name, [this.gender]);
}

void main() {
  User michael = User('Michael', Gender.male);
  User langitan = User('Langitan');

  print(michael.name);
  print(michael.gender);
  print(langitan.name);
  print(langitan.gender);
  print(Gender.values);
}


