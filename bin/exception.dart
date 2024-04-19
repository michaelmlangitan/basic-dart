class ValidatorException implements Exception {
  String message;
  ValidatorException(this.message);
}

class Validator {
  static void validate(String name, String password) {
    if (name == '') {
      throw ValidatorException('name should not be blank.');
    }

    if (password == '') {
      throw ValidatorException('password should not be blank.');
    }

    if (name != 'Michael' || password != 'pass') {
      throw Exception('name must Michael and password must pass');
    }
  }
}

void main() {
  // try {
  //   Validator.validate('Michael', '');
  // } on ValidatorException {
  //   print('Validator Exception is thrown');
  // }

  try {
    Validator.validate('Michael', 'password');
  } on ValidatorException catch(exception) {
    print('Validator Exception is thrown. Message: ${exception.message}');
  } catch (exception, stackTrace) {
    print(exception.toString());
    print(stackTrace.toString());
  } finally {
    // error or not will execute
    print('Finally');
  }

  print('Program complete');
}