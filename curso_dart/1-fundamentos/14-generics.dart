void main(List<String> args) {
  
  print("Inicio");
  List<String> frutas = ["banana", "maça", "laranja"];
  frutas.add("melão");
  // frutas[100]; erro de runtime
  print(frutas);

  Map<String, double> salarios = {
    "gerente": 19345.78,
    "vendedor": 16345.80,
    "estagiario": 600,
  };
  print(salarios);
}