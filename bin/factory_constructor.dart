class Database {
  Database() {
    print('Create new Database');
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }
}

void main() {
  var database1 = Database();
  var database2 = Database();
  print(database1 == database2); // false

  print('-------------');

  // instance only create by once time
  var database3 = Database.get();
  var database4 = Database.get();
  print(database3 == database4); // true
}