abstract class AbstractController {
  String? name;
  AbstractController(this.name);

  void run();
}

class Controller extends AbstractController {
  Controller(super.name);

  @override
  void run() {
    print('Ok, i\'am running..');
  }
}

void main() {
  // AbstractController abstractController = AbstractController(); will error: Abstract classes can't be instantiated.
  Controller controller = Controller('UserController');
  print('Controller name: ${controller.name}');
  controller.run();
}