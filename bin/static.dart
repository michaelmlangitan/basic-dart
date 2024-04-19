class App {
  static final String name = 'App Guide';
  static final String version = '0.1';

  static int sumHelper(int first, int second) => first + second;
}


void main() {
  print(App.name);
  print(App.version);
  print(App.sumHelper(1, 2));
}