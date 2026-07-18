import 'package:sqflite/sqflite.dart';

abstract final class SqfliteConfig {
  static const _databaseName = 'app_database.db';
  static const _databaseVersion = 1;

  static Future<Database> init() {
    return openDatabase(
      _databaseName,
      version: _databaseVersion,
      onCreate: (db, _) => _ensureDatabaseSchema(db),
      onUpgrade: (db, oldVersion, newVersion) => _ensureDatabaseSchema(db),
      onOpen: _ensureDatabaseSchema,
    );
  }

  static Future<void> _ensureDatabaseSchema(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS notes (
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        content TEXT NOT NULL,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL
      )
    ''');
  }
}
