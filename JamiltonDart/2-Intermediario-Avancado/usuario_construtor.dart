class Usuario {
  String? usuario;
  String? senha;
  String? cargo;

  // Usuario(String usuario, String senha) {
  //   this.usuario = usuario;
  //   this.senha = senha;
  //   print("Configurações iniciais do objeto");
  // }
  Usuario(this.usuario, this.senha);

  // named constructor
  Usuario.diretor(this.usuario, this.senha){
    this.cargo = "Diretor";
    print("Libera privilégios $cargo");
  }

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
