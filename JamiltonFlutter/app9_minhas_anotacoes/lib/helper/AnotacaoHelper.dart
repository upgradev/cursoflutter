import 'package:app9_minhas_anotacoes/model/Anotacao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// class singleton

class AnotacaoHelper {
  static final String nomeTabela = "anotacao";
  static final String colunaId = "id";

  static final AnotacaoHelper _anotacaoHelper = AnotacaoHelper._internal();

  Database? _db;

  factory AnotacaoHelper() {
    return _anotacaoHelper;
  }

  AnotacaoHelper._internal() {}

  get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await inicializarDB();
      return _db;
    }
  }

  _onCreate(Database db, int version) async {
    String sql = "create table $nomeTabela (id integer primary key autoincrement, titulo varchar, descricao text, data datetime)";
    await db.execute(sql);
  }

  inicializarDB() async {
    final caminhBancoDedados = await getDatabasesPath();
    final localBancodados = join(caminhBancoDedados, "banco_minhas_anotacoes.db");

    var db = await openDatabase(localBancodados, version: 1, onCreate: _onCreate);
    return db;
  }

  Future<int> salvarAnotacao(Anotacao anotacao) async {
    var bancoDados = await db;

    int resultado = await bancoDados.insert(nomeTabela, anotacao.toMap());
    return resultado;
  }

  recuperarAnotacoes() async {
    var bancoDados = await db;
    String sql = "select * from $nomeTabela order by data desc";
    List anotacoes = await bancoDados.rawQuery(sql);
    return anotacoes;
  }

  Future<int> atualizarAnotacao(Anotacao anotacao) async {
    var bancoDados = await db;
    return await bancoDados.update(nomeTabela, anotacao.toMap(), where: "id = ?", whereArgs: [anotacao.id]);
  }

  Future<int> removerAnotacao(int id) async {
    var bancoDados = await db;
    return await bancoDados.delete(nomeTabela, where: "id = ?", whereArgs: [id]);
  }
}
