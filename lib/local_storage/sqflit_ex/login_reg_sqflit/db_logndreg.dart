import 'package:sqflite/sqflite.dart ' as sql;

class SQL_function {
  static Future<sql.Database> createDB() async {
    return await sql.openDatabase('users', version: 1,
        onCreate: (database, version) async {
          await createtable(database);
        });
  }

  static Future<void> createtable(sql.Database database) async {
    await database.execute(
        'CREATE TABLE userdata (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, phonenumber TEXT ,email TEXT ,password TEXT)');
  }

  static Future<int> adduser(String name, String password, String email, String phonenumber) async{
    final db=await SQL_function.createDB();
    var data={'name':name,'password':password,'email':email,'phonenumber':phonenumber};
    final id=db.insert('userdata', data);
    return id;
  }

  static Future<List<Map>> checkuserregister(String email, String pass) async{
    final db=await SQL_function.createDB();
    final data=await db.query("userdata",where: 'email=? AND password=?',whereArgs: [email,pass]);
    if(data.isNotEmpty){
      return data;
    }else{
      return data;
    }
  }

  static Future<List<Map>> checkuseralreadyregister(String email) async{
    final db=await SQL_function.createDB();
    final result=db.query('userdata',where: 'email=?',whereArgs: [email]);
    return result;
  }

  static Future<List<Map<String,dynamic>>> takeusers() async{
    final db=await SQL_function.createDB();
    return db.query('userdata',orderBy: 'id');
  }
  static Future<void> deletetask(int id)async{
    final db=await SQL_function.createDB();
    try{
      await db.delete('userdata ',where: 'id=?',whereArgs: [id]);
    }catch(e){
      print(e);
    }
  }
}