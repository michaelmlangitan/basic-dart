void main() {
  List categoryList = [];

  // RangeError (index): Invalid value: Valid value range is empty: 0
  // print(categoryList[0]);

  if (categoryList.isNotEmpty) {
    print(categoryList[0]);
  }
}