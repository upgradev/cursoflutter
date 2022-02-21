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

  Map<String, double> notasDosAlunos = {
    "ana": 9.7,
    "bia": 9.2,
    "carlos": 7.8,
  };

  for (var chave in notasDosAlunos.keys) {
    print(chave);
  }
}
