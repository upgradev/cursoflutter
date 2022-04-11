void main(List<String> args) {
  var comando = "depositar";

  switch (comando) {
    case "depositar":
      print("Deposite um valor");
      break;
    case "sacar":
      print("Faça um saque");
      break;
    default:
      print("Nenhuma opção escolhida");
  }
}
