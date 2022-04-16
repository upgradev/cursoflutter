import 'usuario_construtor.dart';

void main(List<String> args) {
  Usuario usuario = Usuario("teste@gmail.com", "123456");
  // usuario.usuario = "teste@gmail.com";
  // usuario.senha = "123456";

  usuario.autenticar();
  // Usuario usuarioDiretor = Usuario.diretor("teste@gmail.com", "123456");

}
