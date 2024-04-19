class WithoutOverrideEqual {
  String? name;

  WithoutOverrideEqual(this.name);
}

class WithOverrideEqual {
  int? id;
  String? name;

  WithOverrideEqual(this.id, this.name);

  // Simple with code > generate > select ==() & HashCode

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WithOverrideEqual &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

// bool operator ==(Object other) {
  //   return other is WithOverrideEqual && other.id == id && other.name == name;
  // }
  //
  // // Ketika override equal maka lebih baik override hashCode juga.
  // @override
  // int get hashCode {
  //   return id.hashCode + name.hashCode;
  // }


}

void main() {
  WithoutOverrideEqual woe1 = WithoutOverrideEqual('Michael');
  WithoutOverrideEqual woe2 = WithoutOverrideEqual('Michael');

  print(woe1 == woe1);
  print(woe1 == woe2);

  WithOverrideEqual woe3 = WithOverrideEqual(1, 'Langitan');
  WithOverrideEqual woe4 = WithOverrideEqual(1, 'Langitan');

  print(woe3 == woe3);
  print(woe3 == woe4);
  print(woe3.hashCode);
  print(woe4.hashCode);
}