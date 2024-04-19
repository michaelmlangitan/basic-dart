class ImmutablePoint {
  // karena const constructor adalah immutable (class tidak bisa dirubah) maka gunakan final adalah wajib.
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  // var point1 = ImmutablePoint(10, 10);
  // var point2 = ImmutablePoint(10, 10);
  // print(point1 == point2); // result = false

  var point1 = const ImmutablePoint(10, 10);
  var point2 = const ImmutablePoint(10, 10);
  print(point1 == point2);
}