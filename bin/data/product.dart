class Product {
  int? id;
  String? name;
  int? _quantity; // only can access in same file content.

  int? getQuantity() {
    return _quantity;
  }
}