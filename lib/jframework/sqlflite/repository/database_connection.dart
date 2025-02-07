// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseConnection {
//   setDatabase() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     var directory = await getApplicationDocumentsDirectory();
//     var path = join(directory.path, 'db_calculatebadminton');
//     var database =
//         await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
//     return database;
//   }

//   _onCreatingDatabase(Database database, int version) async {
//     await database.execute(
//         "CREATE TABLE kitnimon(id INTEGER PRIMARY KEY,date TEXT,numberMonks INTEGER,place TEXT,typeID INTEGER,typeName TEXT, tiemStartID INTEGER,tiemStartName TEXT, typeVihicleID INTEGER,typeVihicleName TEXT,distanct INTEGER,isReceivedInvitation TEXT)");
//   }
// }
