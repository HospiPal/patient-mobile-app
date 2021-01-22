import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DataBaseConnection {
  // gets application directory and adds a new path ('db_patient') which will contain the sqflite database 'db_patient

  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_patient');
    // db = database
    var db = await openDatabase(path, version: 1, onCreate: _onCreateDatabase);
    return db;
  }

  _onCreateDatabase(Database db, int version) async {
    // create medication table
    await db.execute(
        "CREATE TABLE medicationInfo(name TEXT, code TEXT, form TEXT,  amount DOUBLE, ingredients TEXT, active BOOL, expDate TEXT, daysToTake TEXT");

    // create journal table
    await db.execute(
        "CREATE TABLE journal(subject TEXT, height INT, weight INT, dateStamp TEXT, symptoms TEXT, physicians TEXT, severity TEXT");

    // create user table
    await db.execute(
        "CREATE TABLE user(patient TEXT");
  }

}
