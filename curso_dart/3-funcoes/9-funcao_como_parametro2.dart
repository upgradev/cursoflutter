// void executarPo(int qtde, Function(String) fn, String valor) {
//   for (int i = 0; i < qtde; i++) {
//     fn(valor);
//   }
// }

int executarPo(int qtde, String Function(String) fn, String valor) {
  String textoCompleto = "";
  for (int i = 0; i < qtde; i++) {
    textoCompleto += fn(valor);
  }
  return textoCompleto.length;
}

void main(List<String> args) {
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };
  int tamanho = executarPo(10, meuPrint, "Muito legal");
  print("O tamanho da string é $tamanho");
}
