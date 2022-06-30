import 'package:app9_minhas_anotacoes/helper/AnotacaoHelper.dart';

class Anotacao {
  int? id;
  String? titulo;
  String? descricao;
  String? data;

  Anotacao(this.titulo, this.descricao, this.data);

  Anotacao.fromMap(Map map){
    id = map[AnotacaoHelper.colunaId];
    titulo = map["titulo"];
    descricao = map["descricao"];
    data = map["data"];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      "titulo": this.titulo,
      "descricao": this.descricao,
      "data": this.data,
    };

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }
}
