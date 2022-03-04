void main(List<String> args) {
  Map<String, double> notas = {
    "João Pedro": 9.1,
    "Maria": 7.2,
    "Ana": 6.4,
    "Roberto": 8.8,
    "Pedro": 9.9,
  };

  for (String nome in notas.keys) {
    print("Nome do aluno é $nome e a nota é ${notas[nome]}");
  }

  for (var nota in notas.values) {
    print("A nota é: $nota");
  }

  for(var registro in notas.entries){
    print("O ${registro.key} tem nota ${registro.value}.");
  }

}
