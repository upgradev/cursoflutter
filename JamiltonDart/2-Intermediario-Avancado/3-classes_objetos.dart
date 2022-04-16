import 'casa.dart';
import 'usuario.dart';

void main(List<String> args) {
  Casa minhacasa = new Casa();

  minhacasa.cor = "Amarela";
  minhacasa.abrirCasa();
  // minhacasa.abrirJanela(5);
  // minhacasa.abrirPorta();
  // print(minhacasa.cor);

  Casa minhacasa2 = new Casa();
  minhacasa2.cor = "Vermelha";
  minhacasa2.abrirCasa();
  // minhacasa2.abrirJanela(3);
  // minhacasa2.abrirPorta();

  Usuario usuario = Usuario();
  usuario.usuario = "teste@gmail.com";
  usuario.senha = "123456";
  usuario.autenticar();
}
