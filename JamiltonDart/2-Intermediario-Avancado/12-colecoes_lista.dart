void main(List<String> args) {
  List<String> frutas = ["Morango", "Manga"];
  List<int> numeros = [1,5,10];
  List numeros2 = [1,5,10, "Ana", 1.23];
  frutas.add("Melancia");
  frutas.insert(0, "Abacaxi");
  print(frutas);
  // remover
  // frutas.remove("Manga");
  frutas.removeAt(0);
  print(frutas.contains("Morango"));
  print(frutas.length);
  print(frutas);
  print(numeros);
  print(numeros2);


  Usuario usuario = Usuario("Ana", 30);

  List<Usuario> usuarios = [];
  usuarios.add(usuario);
  usuarios.add(Usuario("João", 45));
  usuarios.add(Usuario("Jorge", 34));
  for(Usuario usuario in usuarios){
    print("Nome: ${usuario.nome} Idade: ${usuario.idade}");
  }


}

class Usuario{
  String? nome;
  int? idade;

  Usuario(this.nome, this.idade);
}