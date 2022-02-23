import 'dart:io';

void main() {
  
  // area da circunferencia é PI * raio * raio
  const PI = 3.1415;
  stdout.write("Informe o raio: ");
  var entradaDoUsuario = stdin.readLineSync();
  final double raio = double.parse(entradaDoUsuario!);

  var area = PI * raio * raio;

  print("Valor da área é: " + area.toString());

}