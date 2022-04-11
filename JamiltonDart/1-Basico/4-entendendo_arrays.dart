void main(List<String> args) {
  var nomes = [
    "João",
    "Ana",
    "Maria",
    "Regina",
    "Claudia",
  ];
  print("Toda lista: $nomes");
  print("em uma posição: ${nomes[1]}");

  nomes[1] = "Fernanda";
  print("Alterando nome da posicao: ${nomes[1]}");
}
