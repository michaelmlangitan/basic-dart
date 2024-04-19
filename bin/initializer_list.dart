class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  // didalam initializer list tidak akan menjadi variable shadowing.
  Customer(this.fullName)
      : firstName = fullName.split(' ')[0],
        lastName = fullName.split(' ')[1]
  {
    // firstName = this.fullName.split(' ')[0];
    // lastName = this.fullName.split(' ')[1];
    print('Create new Customer');
  }
}

void main() {
  var customer = Customer('Michael Langitan');
  print(customer.fullName);
  print(customer.firstName);
  print(customer.lastName);
}