class Guest {
  String? firstName;
  String? lastName;
  String role = 'ROLE_GUEST'; // un-nullable
  final String roleGroup = 'GUEST'; // unmodified

  // method expression body
  String getFullName() => '$firstName $lastName';

  // common method expression
  void sayHello(String yourName) {
    print('Hello $yourName, my name is $firstName and my full name is ${getFullName()}');
  }
}

// Extension Method
extension GoodByeOnGuest on Guest {
  // will added method on Guest class
  void sayGoodBye(String yourName) => print('Good bye $yourName, from $firstName');
}

class ProductItem {
  int quantity = 0;

  // like ProductItem add(ProductItem otherItem)
  ProductItem operator +(ProductItem otherItem) {
    var result = ProductItem();
    result.quantity = quantity + otherItem.quantity;
    return result;
  }
}

class Animal {
  String name = 'Unknown';
  int numberOfLegs = 2;

  // this.name is initializing Formal Parameter. Can only used in construct.
  Animal(this.name, [int? paramNumberOfLegs]) {
    // this.name = name; // Use an initializing formal to assign a parameter to a field. Simple use this.name in param of method.
    numberOfLegs = paramNumberOfLegs ?? numberOfLegs;
  }

  // Named constructor
  Animal.withName(this.name);

  // Redirecting Construct. This redirect is has not body, only forward param to this default constructor.
  Animal.withLegs(int numberOfLegs) : this('Unknown Animal', numberOfLegs);

  // redirecting to named constructor.
  Animal.duckAnimal() : this.withName('Duck');
}

void main() {
  Guest guest = Guest();
  guest.firstName = 'Michael';
  guest.lastName = 'Langitan';

  print(guest);
  print(guest.firstName);
  print(guest.lastName);
  print(guest.getFullName());
  guest.sayHello('World');
  guest.sayGoodBye('World');
  print('-----------------');

  ProductItem item1 = ProductItem();
  item1.quantity = 1;
  ProductItem item2 = ProductItem();
  item2.quantity = 1;

  var item3 = item1 + item2;
  print(item3);
  print('Total item1 + item2 = item3, and qty item3 is ${item3.quantity}');
  print('-----------------');

  Animal chicken = Animal('Chicken');
  print(chicken);
  print('Animal name is ${chicken.name}');
  print('Animal number of legs is ${chicken.numberOfLegs}');

  Animal dog = Animal('Dog', 4);
  print(dog);
  print('Animal name is ${dog.name}');
  print('Animal number of legs is ${dog.numberOfLegs}');

  Animal hawk = Animal.withName('Hawk');
  print(hawk);
  print('Animal name is ${hawk.name}');
  print('Animal number of legs is ${hawk.numberOfLegs}');

  Animal unknownAnimal = Animal.withLegs(1000);
  print(unknownAnimal);
  print('Animal name is ${unknownAnimal.name}');
  print('Animal number of legs is ${unknownAnimal.numberOfLegs}');


  Animal duck = Animal.duckAnimal();
  print(duck);
  print('Animal name is ${duck.name}');
  print('Animal number of legs is ${duck.numberOfLegs}');
}