import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), "todo.db"),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE TODOLIST (id INTEGER PRIMARY KEY,title TEXT,description TEXT)");
      },
      version: 1,
    );
  }
}
