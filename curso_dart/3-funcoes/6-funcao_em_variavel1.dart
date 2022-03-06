int somaFn(int a, int b) {
  return a + b;
}

void main(List<String> args) {
  //tipo nome = valor;
  int Function(int, int) soma1 = somaFn;
  print(soma1(20, 313));

  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };

  var soma3 = ([int x = 1, int y = 1]) {
    return x + y;
  };
  print(soma3(2, 3));
  print(soma3(20));
  print(soma3());
}
