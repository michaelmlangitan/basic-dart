void main() {
  int counter = 1;

  while (true) {
    print('Counter $counter');
    counter++;

    if (counter > 7) {
      break;
    }
  }
}