import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'player_profiles.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE profiles(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            playerName TEXT,
            level INTEGER,
            score INTEGER
          )
        ''');
      },
    );
  }

  Future<void> insertProfile(Map<String, dynamic> profile) async {
    final db = await database;
    await db!.insert('profiles', profile);
  }

  Future<List<Map<String, dynamic>>> getProfiles() async {
    final db = await database;
    return await db!.query('profiles');
  }

  Future<void> updateProfile(int id, Map<String, dynamic> profile) async {
    final db = await database;
    await db!.update('profiles', profile, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> deleteProfile(int id) async {
    final db = await database;
    await db!.delete('profiles', where: 'id = ?', whereArgs: [id]);
  }
}