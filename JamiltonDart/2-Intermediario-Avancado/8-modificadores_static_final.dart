class Configuracoes {
  static String identificadorApp = "ASDASDAS";
  static String notificacaoSom = "sim";

  static void configuracaoInicial() {
    print("Executa config inicial");
  }
}

class Conta{

  String? valor;

}

void main(List<String> args) {
  // Configuracoes configuracoes = Configuracoes();
  // print(Configuracoes.notificacaoSom);
  // Configuracoes.configuracaoInicial();

  final Conta conta = Conta();
  conta.valor = "teste";
  

  print(conta.valor);
}
