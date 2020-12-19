import 'package:Student/repositories/database_connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  DatabaseConnection _databaseConnection;
  Repository() {
    //Initialize database connection
    _databaseConnection = DatabaseConnection();
  }
  static Database _database;
  //Check if database is exist or not
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _databaseConnection.setDatabase();
    return _database;
  }

  //Insert data to Table
  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  //Read data from Table
  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }
}
