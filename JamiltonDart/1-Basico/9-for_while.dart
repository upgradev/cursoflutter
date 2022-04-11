void main(List<String> args) {
  // while //
  // var numero = 5;

  // while (numero > 5) {
  //   print("Executado while: $numero");
  //   numero--;
  // }

  // for //
  for (int numero = 1; numero <= 5; numero++) {
    print("Executado for: $numero");
  }

  var postagens = [
    "Viagem entre amigos",
    "natal em familia",
    "Almoço de domingo na casa da mãe",
  ];
  print("");
  for (var postagem in postagens) {
    print("Titulo: $postagem");
  }
  print("");
  var numero = 1;
  do {
    print("executando do while: $numero");
    numero++;
  } while (numero <= 5);
}
