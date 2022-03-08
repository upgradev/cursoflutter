void main(List<String> args) {
  var alunos = [
    {"nome": "Alfedro", "nota": 9.9},
    {"nome": "Wilson", "nota": 9.3},
    {"nome": "Mariana", "nota": 8.7},
    {"nome": "Guilherme", "nota": 8.1},
    {"nome": "Ana", "nota": 7.6},
    {"nome": "Ricardo", "nota": 6.8},
  ];

  var total = alunos.map((aluno) => aluno["nota"]).map((nota) => (nota as double)).reduce((t, a) => t + a);
  print(total);
  print("valor da media é: ${total / alunos.length}");

  var notasfinais = alunos.map((aluno) => aluno["nota"]).map((nota) => (nota as double).roundToDouble()).where((nota) => nota >= 8.5);
  var total2 = notasfinais.reduce((t, a) => t + a);
  print(total2);
  print("valor da media é: ${total2 / notasfinais.length}");
}
