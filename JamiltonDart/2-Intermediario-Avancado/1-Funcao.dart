void exibirMensagem(String nome, int idade) {
  print("Nome $nome idade $idade anos");
}

// double calcularSalario(double salario) {
//   var total = salario - (salario * 0.1);
//   return total;
//   print("Salário total: $total");
// }

double calcularSalario(double salario) => salario - (salario * 0.1);

void main(List<String> args) {
  exibirMensagem("Ana Aparecida", 34);
  exibirMensagem("Pedro", 45);

  double bonus = 500;
  double resultado = calcularSalario(1000);
  double total = resultado + bonus;
  print("Salário total: $total");
}
