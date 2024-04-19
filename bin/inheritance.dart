class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name} by manager');
  }
}

class VicePresident extends Manager {
  // @override
  // void sayHello(String name) {
  //   print('Hello $name, my name is ${this.name} by vice president');
  // }
}

class Person {
  String name = 'Person';

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }

  int getAge() {
    return 20;
  }
}

class AnotherPerson extends Person {
  @override
  String name = 'AnotherPerson';

  @override
  int getAge() {
    return 10;
  }

  int getParentAge() {
    return super.getAge();
  }
}

class SuperClass {
  String? name;
  SuperClass(this.name);
}

class ChildClass extends SuperClass {
  // ChildClass(String name) : super(name); // or use simple with
  // ChildClass(String super.name);
  ChildClass(String super.name) {
    print('Create new Child Class');
  }
}

void main() {
  var manager = Manager()
    ..name = 'Michael';
  manager.sayHello('Langitan');
  var vicePresident = VicePresident()
      ..name = 'Avell';
  vicePresident.sayHello('Array');

  print('--------');

  var person = Person();
  person.sayHello('Michael');
  var anotherPerson = AnotherPerson();
  anotherPerson.sayHello('Langitan');

  print('--------');
  var superKeyword = AnotherPerson();
  print('My age is ${superKeyword.getAge()}');
  print('My parent age is ${superKeyword.getParentAge()}');


  print('--------');
  var childClass = ChildClass('Michael');
  print(childClass.name);
}