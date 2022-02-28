void main() {
  // Operadores Aritmeticos ( binario / infix)
  int a = 7;
  int b = 3;
  int resultado = a + b;
  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(33 % 2);
  print(4 % 2);
  print(a + (b * a) - (b / a));

  //Operadores logicos
  bool ehFragil = true;
  bool ehCaro = false;
  
  print(ehFragil && ehCaro);
  print(ehFragil || ehCaro);
  print(ehFragil ^ ehCaro);
  print(!ehFragil);
  print(!!ehCaro);

}
