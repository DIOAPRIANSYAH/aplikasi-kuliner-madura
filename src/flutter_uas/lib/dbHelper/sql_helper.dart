import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _database;
  static const String _dbName = 'makanan.db';
  static const String _tableName = 'makanan';
  static const String _colId = 'id';
  static const String _colNamaMakanan = 'nama_makanan';
  static const String _colKategori = 'kategori';
  static const String _colDeskripsi = 'deskripsi';
  static const String _colAsalMakanan = 'asal_makanan';
  static const String _colTanggalDibuat = 'tanggal_dibuat';
  static const String _colDurasiMasak = 'durasi_masak';

  DBHelper._privateConstructor();
  static final DBHelper instance = DBHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTable,
    );
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tableName (
        $_colId INTEGER PRIMARY KEY AUTOINCREMENT,
        $_colNamaMakanan TEXT,
        $_colKategori TEXT,
        $_colDeskripsi TEXT,
        $_colAsalMakanan TEXT,
        $_colTanggalDibuat TEXT,
        $_colDurasiMasak TEXT
      )
    ''');
  }

  Future<int> insertMakanan(Map<String, dynamic> makanan) async {
    Database db = await instance.database;
    return await db.insert(_tableName, makanan);
  }

  Future<List<Map<String, dynamic>>> getAllMakanan() async {
    Database db = await instance.database;
    return await db.query(_tableName);
  }

  Future<int> updateMakanan(Map<String, dynamic> makanan) async {
    Database db = await instance.database;
    int id = makanan[_colId];
    return await db.update(
      _tableName,
      makanan,
      where: '$_colId = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteMakanan(int id) async {
    Database db = await instance.database;
    return await db.delete(
      _tableName,
      where: '$_colId = ?',
      whereArgs: [id],
    );
  }
}
