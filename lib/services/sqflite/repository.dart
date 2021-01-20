import 'package:sqflite/sqflite.dart';
import 'database_connection.dart';

class Repository{
  DataBaseConnection _databaseConnection;

  Repository(){
    _databaseConnection = DataBaseConnection();
  }

  Database _database;
  
  // get database
  Future<Database> get database async{
    if(_database != null) return _database;
    _database = await _databaseConnection.setDatabase();
    return _database;
  }

  // insert
  insertData(table, data) async {
    var db = await database;
    return await db.insert(table, data);
  }

  // read from table
  readData(table) async {
    var db = await database;
    return await db.query(table);
  }

  // read from table by id
  readDataById(table, itemId) async {
    var db = await database;
    return await db.query(table, where: 'id = ?', whereArgs: [itemId]);
  }

  // update data
  updateData(table, data) async {
    var db = await database;
    return await db.update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  // delete
  deleteData(table, itemId) async {
    var db = await database;
    return await db.rawDelete("DELETE FROM $table WHERE id= $itemId" );
  }
}