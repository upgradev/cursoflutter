void main() {
  // int a = 3;
  // double b = 3.1;
  // bool etsaChovendo = true;
  // bool estaFrio = false;

  // var c = "voce é muito legal";
  // print(c is String);
  // print(etsaChovendo || estaFrio);

  // var nomes = ["ana", "bia", "carlos"];
  // print(nomes.length);
  // nomes.add("daniel");
  // nomes.add("daniel");
  // nomes.add("daniel");
  // print(nomes);
  // print(nomes.elementAt(0));
  // print(nomes[5]);

  // Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4};
  // print(conjunto.length);
  // print(conjunto is Set);

  // dynamic x = "teste";
  // x = 123;
  // x = false;

  // print(x);

  // Map<String, double> notasDosAlunos = {
  //   "ana": 9.7,
  //   "bia": 9.2,
  //   "carlos": 7.8,
  // };

  // for (var chave in notasDosAlunos.keys) {
  //   print("chave = $chave");
  // }

  // for (var valor in notasDosAlunos.values) {
  //   print("valor = $valor");
  // }

  // for (var registro in notasDosAlunos.entries) {
  //   print("${registro.key} = ${registro.value}");
  // }

  // var a = 3;
  // a = 4;

  // final b = 3;
  // // b = 4;

  // const c = 5;
  // // c = 7;

  // soma(2, 3);

  var p1 = new Produto(nome: "lapis");
  var p2 = new Produto(nome: "Geladeira", preco: 1453.23);

  print("O produto ${p1.nome} tem preço R\$ ${p1.preco}");
  print("O produto ${p2.nome} tem preço R\$ ${p2.preco}");
}

void soma(int a, int b) {
  print(a + b);
  final r = exec(2, 3, (a, b) {
    return a - b;
  });
  print(r);
}

int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

class Produto {
  String? nome;
  double? preco;

  Produto({this.nome, this.preco = 9.99});

  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }
}
