import 'dart:math';

void executar({Function? fnPar, Function? fnImpar}) {
  var valorSorteado = Random().nextInt(10);
  print("O valor sorteado foi $valorSorteado");
  valorSorteado % 2 == 0 ? fnPar!() : fnImpar!();
}

void main(List<String> args) {
  var minhaFnPar = () => print("Eita! o valor é par");
  var minhaFnImpar = () => print("Legal! o valor é impar");

  executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);
}
