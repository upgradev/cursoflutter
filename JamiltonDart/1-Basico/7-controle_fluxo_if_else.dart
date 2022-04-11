void main(List<String> args) {
  if (true) {
    print("verdade");
    print("teste");
  }
  if (6 == 5 || 6 == 6) {
    print("verdade");
  } else {
    print("falso");
  }

  var idade = 18;
  if (idade < 14) {
    print("criança");
  } else if (idade >= 14 && idade <= 17) {
    print("adolescente");
  } else {
    print("adulto");
  }
}
