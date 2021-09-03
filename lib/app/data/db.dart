import 'package:mobx/mobx.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DB {
  // construtor com acesso privado
  DB._();
  // criar uma instacia do db
  static final DB instance = DB._();

  // instancia do slite
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(join(await getDatabasesPath(), 'dbgs.db'),
        version: 1, onCreate: _onCreate);
  }

  _onCreate(db, versao) async {
    await db.execute(_empresa);
    await db.execute(_filia);
    await db.execute(_funcionario);
    //await db.execute(_config);
    //await db.execute(_pedidoDeVenda);
    // await db.execute(_notaFiscal);
    // await db.execute(_produto);
  }

  String get _empresa => '''
      
      CREATE TABLE EMPRESA (
        EM_COD INTEGER PRYMARY KEY AUTOINCREMENT,
        EM_RAZSOC TEXT,
        EM_CNPJ TEXT
      );

  ''';

  String get _filia => '''
      
      CREATE TABLE FILIAL (
        FI_COD INTEGER PRYMARY KEY AUTOINCREMENT,
        EM_COD INTEGER,
        EM_RAZSOC TEXT,
        EM_CNPJ TEXT
      );

  ''';

  String get _funcionario => '''
      
      CREATE TABLE FUNC (
        
        FU_NUM_MATRIC INTEGER PRYMARY KEY AUTOINCREMENT,
        FU_NOME TEXT,
        FU_NOME_LOGIN TEXT,
        FU_SENHA TEXT,
        FU_EMAIL TEXT,
        EM_CNPJ TEXT
      );

  ''';
}
