// int soma(int a, int b){
//   return a + b;
// }
int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

class Produto {
  String? nome;
  double? preco;

    Produto({this.nome, this.preco});

  // Produto(this.nome, this.preco);
  
  // Produto(String nome, double preco) {
  //   this.nome = nome;
  //   this.preco = preco;
  // }

}

void main(List<String> args) {
  var p1 = new Produto(nome: "lapis", preco: 4.78);
  var p2 = Produto(preco: 1678.90, nome: "geladeira");
  // p1.nome = "Lapis";
  // p1.preco = 4.59;

  print(" O produto ${p1.nome} tem preço R\$ ${p1.preco} ");
  print(" O produto ${p2.nome} tem preço R\$ ${p2.preco} ");

  // print("O valor da soma é ${soma(2, 3)}");

  // final r = exec(2, 3, (a, b) => a * b + 100);

  // print("resultado r: $r");

  // print("Primeiro programa");

  // int a = 3;
  // double b = 3.1;
  // bool estaChovendo = true;
  // bool estaFrio = false;
  // var c = "Vc é muito legal";
  // print(c is String);

  // print(estaChovendo || estaFrio);

  // var nomes = ["Ana", "Bia", "Carlos"];
  // nomes.add("Carla");
  // nomes.add("Carla");
  // nomes.add("Carla");
  // print(nomes.length);
  // print(nomes.elementAt(0));
  // print(nomes[5]);

  // // var conjunto = {0,1,2,3,4,4,4,4};
  // Set<int> conjunto = {0,1,2,3,4,4,4,4};
  // print(conjunto.length);
  // print(conjunto is Set);

  // Map<String, double> notasDosAlunos = {
  //   "Ana": 9.7,
  //   "Carlos": 4.2,
  //   "Bia": 6.7,
  // };

  // for(var chave in notasDosAlunos.keys){
  //   print("chave = $chave");
  // }
  // for(var valor in notasDosAlunos.values){
  //   print("valor = $valor");
  // }
  // for(var registro in notasDosAlunos.entries){
  //   print("${registro.key} = ${registro.value}");
  // }

  // //armazena generico
  // dynamic x = "teste";
  // x = 123;
  // x = false;

  // final b2 = 3;
  // b2 = 34; nao pode
}
