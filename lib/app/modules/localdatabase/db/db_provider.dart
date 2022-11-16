
import 'package:sqflite/sqflite.dart';

class DBprovider{
  DBprovider._();

  static final DBprovider dataBase =DBprovider._();
  static Database? _database;
  Future<Database?> get database async{
    if(_database!=null){
      return _database;
    }

    _database =await initDatabase();
    return _database;
  }

  initDatabase() async{
    return await openDatabase(join(await getDatabasesPath(),'todo_app_db.db'),
      onCreate:(db,version) async{
          await db.execute('''
           
          ''');
      }
    );

  }

}

