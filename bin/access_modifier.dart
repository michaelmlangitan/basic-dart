import 'data/product.dart';

void main() {
  var product = Product();
  product.id = 1;
  product.name = 'Car';
  // product.__quantity = 100; cannot access because is not in same file content.
  product.getQuantity();
}