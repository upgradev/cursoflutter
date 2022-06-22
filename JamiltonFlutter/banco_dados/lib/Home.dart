import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _recuperarBancoDados() async {
    final caminhaBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhaBancoDados, "banco.db");

    var bd = await openDatabase(localBancoDados, version: 1, onCreate: (db, dbVersaoRecente) {
      String sql = "CREATE TABLE usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, idade INTEGER)";
      db.execute(sql);
    });
    return bd;
    // print("aberto: " + retorno.isOpen.toString());
  }

  _salvar() async {
    Database bd = await _recuperarBancoDados();
    Map<String, dynamic> dadosUsuarios = {"nome": "Joao", "idade": 50};
    int id = await bd.insert(
      "usuarios",
      dadosUsuarios,
    );
    print("Salvo: $id");
  }

  _listarUsuarios() async {
    Database bd = await _recuperarBancoDados();
    // String sql = "SELECT * FROM usuarios ";
    // String sql = "SELECT * FROM usuarios where idade between 20 and 30 ";
    // String sql = "SELECT * FROM usuarios where idade in (20, 34) ";
    // String sql = "SELECT * FROM usuarios where nome like 'Ana' ";
    String sql = "SELECT * FROM usuarios ";
    List usuarios = await bd.rawQuery(sql);
    for (var usuario in usuarios) {
      print("item id: " + usuario["id"].toString() + " - nome: " + usuario["nome"] + " - idade: " + usuario["idade"].toString());
    }
    // print("usuarios " + usuarios.toString());
  }

  _recuperarUsuario(int id) async {
    Database bd = await _recuperarBancoDados();
    List usuarios = await bd.query(
      "usuarios",
      columns: ["id", "nome", "idade"],
      where: "id = ? ",
      whereArgs: [id],
    );

    for (var usuario in usuarios) {
      print(
        "item id: " + usuario["id"].toString() + " - nome: " + usuario["nome"] + " - idade: " + usuario["idade"].toString(),
      );
    }
  }

  _excluirUsuario(int id) async {
    Database bd = await _recuperarBancoDados();
    int retorno = await bd.delete("usuarios", where: "id = ? ", whereArgs: [id]);
    print("item qtde removido: $retorno ");
  }

  _atualizarUsuario(int id) async {
    Database bd = await _recuperarBancoDados();
    Map<String, dynamic> dadosUsuarios = {"nome": "Joao", "idade": 30};
    bd.update("usuarios", dadosUsuarios);
    // print("item qtde removido: $retorno ");
  }

  @override
  Widget build(BuildContext context) {
    // _salvar();
    // _listarUsuarios();
    // _excluirUsuario(4);
    _atualizarUsuario(7);
    _recuperarUsuario(7);
    // _listarUsuarios();
    return Container();
  }
}
