void main(List<String> args) {
  // List frutas = ["Morango", "Manga"];
  Map frutas = Map();
  // frutas["MO"] =  "Morango";
  // frutas["MA"] =  "Manga";
  frutas[0] = "Morango";
  frutas[1] = "Manga";
  print(frutas[1]);

  // chave valor
  // Map<int, String> estados = Map();
  Map<String, String> estados = Map();
  // estados[0] = "São Paulo";
  estados["SP"] = "São Paulo";
  estados["MG"] = "Minas Gerais";
  estados["RJ"] = "Rio de Janeiro";

  print(estados);
  print(estados["SP"]);
  print(estados.keys);
  print(estados.values);
  print(estados.containsKey("MG"));
  print(estados.containsValue("São Pauloa"));
  print(estados.length);

  estados.forEach((chave, valor) => print("$chave - $valor"));

  Map<String, dynamic> usuarios = Map();
  usuarios["nome"] = "Ana";
  usuarios["idade"] = 30;
}
