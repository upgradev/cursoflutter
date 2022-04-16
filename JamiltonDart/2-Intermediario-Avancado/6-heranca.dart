import '6.1-cao.dart';
import '6.2-passaro.dart';

void main(List<String> args) {
  Cao cao = Cao();
  Passaro passaro = Passaro();

  cao.cor = "Branco";
  cao.corOrelha = 'Preto';
  print("Cor do cao: ${cao.cor} ");
  print("Cor da orelha: ${cao.corOrelha} ");
  cao.latir();

  passaro.cor = "Marrom";
  passaro.corBico = "Amarela";
  print(passaro.cor);
  passaro.voar();
}
