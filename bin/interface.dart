abstract class AnimalInterface {
  void run();
}

class Dog implements AnimalInterface {
  @override
  void run() {
    print('Ok, i\'am running.');
  }
}

void main() {
  Dog dog = Dog();
  dog.run();
}