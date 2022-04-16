// parametros opcionais
void exibirDados(String nome, int idade, {double? altura}) {
  var novaAltura = altura ?? 0.0;
  print("nome: $nome");
  print("idade: $idade");
  print("altura: $novaAltura");
}

void calcularBonus() {
  print("Seu bonus é 20");
}

void calcularSalario(double salario, Function funcaoParametro) {
  print("Seu salario é: $salario ");
  funcaoParametro();
}

void main(List<String> args) {
  // exibirDados("Ana", 30, altura: 1.79);
  calcularSalario(1000, calcularBonus);
  calcularSalario(200, () {
    print("Calculo customizado");
  });
}
