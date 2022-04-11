void exibirMensagem(String nome, int idade) {
  print("Nome $nome idade $idade anos");
}

void calcularSalario(double salario, double bonus) {
  var total = salario - (salario * 0.1) + bonus;
  print("Salário total: $total");
}

void main(List<String> args) {
  exibirMensagem("Ana Aparecida", 34);
  exibirMensagem("Pedro", 45);
  
  double bonus = 500;
  calcularSalario(1000, bonus);
}
