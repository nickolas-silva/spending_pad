import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqlite_api.dart';

class Db{

  static Future<sql.Database> database() async{
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'expenses.db'),
      onCreate: (db, version){
        return db.execute('CREATE TABLE expenses(id TEXT PRIMARY KEY, title TEXT, date TEXT, value REAL, isDebit INTEGER)');
      },
      version: 1
    );
  }

  static Future<void> insert(String table, Map<String, dynamic> data) async{
    final db = await Db.database();
    await db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await Db.database();
    return db.query(table);
  }

  static Future<void> delete(String table, String id) async {
    final db = await Db.database();
    await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }

}