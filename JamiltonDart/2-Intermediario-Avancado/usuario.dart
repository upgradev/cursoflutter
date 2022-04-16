class Usuario {
  String? usuario;
  String? senha;
  

  void autenticar() {
    var usuario = "teste@gmail.com";
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuário autenticado");
    } else {
      print("Usuario não autenticado");
    }
  }
}
