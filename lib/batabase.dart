import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Datos {
  static Database _database;
  static final Datos db = Datos._();

  Datos._();

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    final path = join(documentsDirectory.path, 'tablaDB.db');
    print(path);
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''
        CREATE TABLE Tabla(
          id INTEGER PRIMARY KEY,
          usuario TEXT,
          password TEXT
        )
        ''');
    });
  }

  Future<List<Tabla>> getAllTablas() async {
    final db = await database;
    var response = await db.query('Tabla');
    List<Tabla> list = response.map((c) => Tabla.fromMap(c)).toList();
    return list;
  }
}

class Tabla {
  int id;
  String usuario;
  String password;

  Tabla({this.id, this.usuario, this.password});
  Map<String, dynamic> toMap() => {
        'id': id,
        'usuario': usuario,
        'password': password,
      };

  factory Tabla.fromMap(Map<String, dynamic> json) => new Tabla(
        id: json['id'],
        usuario: json['usuario'],
        password: json['password'],
      );
}
