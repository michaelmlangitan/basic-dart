class PolymorphismClass {
  String? name;
  PolymorphismClass(this.name);
}

class SubPolymorphismClass extends PolymorphismClass {
  SubPolymorphismClass(super.name);
}

class ChildPolymorphismClass extends PolymorphismClass {
  ChildPolymorphismClass(super.name);
}

void sayHello(PolymorphismClass polymorphismClass) {
  print('Hello ${polymorphismClass.name}');
}

void typeCheckAndCast(PolymorphismClass polymorphismClass) {
  if (polymorphismClass is SubPolymorphismClass) {
    SubPolymorphismClass subPolymorphismClass = polymorphismClass as SubPolymorphismClass;
    print('Hello subPolymorphismClass ${subPolymorphismClass.name}');
  } else if (polymorphismClass is ChildPolymorphismClass) {
    ChildPolymorphismClass childPolymorphismClass = polymorphismClass;
    print('Hello childPolymorphismClass ${childPolymorphismClass.name}');
  } else {
    print('Hello ${polymorphismClass.name}');
  }
}

void main() {
  sayHello(PolymorphismClass('Michael'));
  sayHello(SubPolymorphismClass('Array'));
  sayHello(ChildPolymorphismClass('Avell'));

  print('--------------');

  typeCheckAndCast(PolymorphismClass('Michael'));
  typeCheckAndCast(SubPolymorphismClass('Array'));
  typeCheckAndCast(ChildPolymorphismClass('Avell'));
}