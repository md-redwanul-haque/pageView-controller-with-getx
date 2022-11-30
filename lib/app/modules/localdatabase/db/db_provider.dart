import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../controllers/localdatabase_controller.dart';
import '../model/task_model.dart';

class DataBaseHelper{
  LocaldatabaseController controller =LocaldatabaseController();
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
          id INTEGER PRIMARY KEY,
          title TEXT,
          description TEXT
          )
          
          """
    );
  }
  Future<int> addTodos(todoModel modelObj) async{
    Database db = await dbInstance.getDatabase;
    return await db.insert("todos", modelObj.toJson());
  }

  Future<List<todoModel>> getTodos()async{
    Database db =await dbInstance.getDatabase;
    var todos  = await db.query('todos',orderBy: 'id');

    print('mytodo${todos}');

    List<todoModel> todoList= todos.isNotEmpty?todos.map((modelObj) => todoModel.fromJson(modelObj)).toList():[];

    return todoList;
  }

  Future deleteTodo(int id) async{
    Database db =await dbInstance.getDatabase;
    return await db.delete('todos',where: 'id=?',whereArgs: [id]);

  }

  Future updateTodo(todoModel todo) async{
    Database db =await dbInstance.getDatabase;

    return await db.update(
      'todos',
      todo.toJson(),
      where: 'id=?',
      whereArgs: [todo.id]

    );


  }

}

