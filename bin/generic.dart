/*
 * This common generic name
 * E - Element
 * K - Key
 * N - Number
 * T - Type
 * V - Value
 * S, U, etc types
 */
class MyData<T> {
  T data;
  MyData(this.data);
}

class Pair<K, V> {
  K key;
  V value;
  Pair(this.key, this.value);

  // just sample K is came from generic
  void setKey(K key) {
    this.key = key;
  }

  // just sample V is came from generic
  V getValue() {
    return value;
  }
}

class ArrayHelper {
  static int count<T>(List<T> list) {
    return list.length;
  }
}

int arrayHelpCounter<T>(List<T> list) {
  return list.length;
}

void main() {
  var myData = MyData<String>('Michael');
  print(myData.data);

  // var pair = Pair<String, String>('name', 'Michael');
  var pair = Pair('number', 200); // with auto detect data type from value
  pair.setKey('num');
  pair.getValue();
  print('Pair key: ${pair.key}, value: ${pair.value}');

  var arr1 = [1, 2, 3];
  var arr2 = ['a', 'b', 'c', 'd'];
  print(ArrayHelper.count(arr1)); // or print(ArrayHelper.count<int>(arr1));
  print(arrayHelpCounter(arr1)); // or print(arrayHelpCounter<int>(arr1));
  print(ArrayHelper.count(arr2)); // or print(ArrayHelper.count<String>(arr2));
  print(arrayHelpCounter(arr2)); // or print(arrayHelpCounter<String>(arr2));
}