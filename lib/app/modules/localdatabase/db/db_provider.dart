import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/task_model.dart';

class DataBaseHelper{

  DataBaseHelper._privateConstructor();

  static final DataBaseHelper dbInstance = DataBaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get getDatabase async =>_database ??=await _initDatabase();

  Future<Database> _initDatabase() async{

    Directory documentDirectory = await getApplicationSupportDirectory();
    String path = join(documentDirectory.path, 'myTodo.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

  }

  FutureOr<void> _onCreate(Database db, int version) {
    db.execute(
        """
        CREATE TABLE todos(
          id INTEGER PRIMARY KEY
        )
    
    
        """
    );
  }
  Future addTodos(todoModel modelObj) async{
    Database db = await dbInstance.getDatabase;
    return await db.insert("todos", modelObj.toJson());
  }

}

