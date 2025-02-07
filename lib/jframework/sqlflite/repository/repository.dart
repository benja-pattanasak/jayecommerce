// import 'package:kitnimon/jframework/database/sqlflite/repository/database_connection.dart';
// import 'package:sqflite/sqflite.dart';

// class Repository {
//   late DatabaseConnection _databaseConnection;
//   late Database _database;
//   Repository() {
//     _databaseConnection = DatabaseConnection();
//   }

//   Future<Database> get database async {
//     //if (_database != null) return _database;
//     _database = await _databaseConnection.setDatabase();
//     return _database;
//   }

//   add(table, data) async {
//     var connection = await database;
//     return await connection.insert(table, data);
//   }

//   getAll(table) async {
//     var connection = await database;
//     return await connection.query(table);
//   }

//   getListByRawQeury(sql) async {
//     var connection = await database;
//     return await connection.rawQuery(sql);
//   }

//   getListNotReceive(startDate, endDate) async {
//     var connection = await database;
//     if (startDate == "" && endDate == "") {
//       return await connection
//           .rawQuery('SELECT * FROM kitnimon WHERE isReceivedInvitation=1');
//     } else {
//       return await connection.rawQuery(
//         'SELECT * FROM kitnimon WHERE date BETWEEN ? AND ? and isReceivedInvitation=1',
//         [startDate, endDate],
//       );
//     }
//   }

//   getListReceive(startDate, endDate) async {
//     var connection = await database;
//     if (startDate == "" && endDate == "") {
//       return await connection
//           .rawQuery('SELECT * FROM kitnimon WHERE isReceivedInvitation=2');
//     } else {
//       return await connection.rawQuery(
//         'SELECT * FROM kitnimon WHERE date BETWEEN ? AND ? and isReceivedInvitation=2',
//         [startDate, endDate],
//       );
//     }
//   }

//   getItem(table, itemID) async {
//     var connection = await database;
//     return await connection.query(table, where: 'id=?', whereArgs: [itemID]);
//   }

//   getByReceivedInvitation(table, isReceivedInvitation) async {
//     var connection = await database;
//     return await connection.query(table,
//         where: 'isReceivedInvitation=?', whereArgs: [isReceivedInvitation]);
//   }

//   getItemByColumnID(table, columnID, itemID) async {
//     var connection = await database;
//     return await connection
//         .query(table, where: columnID + '=?', whereArgs: [itemID]);
//   }

//   edit(table, data) async {
//     var connection = await database;
//     return await connection
//         .update(table, data, where: 'id=?', whereArgs: [data['id']]);
//   }

//   delete(table, itemID) async {
//     var connection = await database;
//     return await connection.rawDelete('Delete FROM $table where id=$itemID');
//   }
// }
