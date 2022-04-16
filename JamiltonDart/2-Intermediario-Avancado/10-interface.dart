abstract class Presidenciavel {
  void participarEleicao();
}

abstract class Jornalismo {
  void escreverArtigoJornal();
}

abstract class Cidado {
  void direitodeveres() {
    print("Todo cidadão tem direitos e deveres");
  }
}

class Obama extends Cidado implements Presidenciavel, Jornalismo {
  @override
  void participarEleicao() {
    // TODO: implement participarEleicao
    print("Eleição dos estados unidos obama");
  }

  @override
  void escreverArtigoJornal() {
    // TODO: implement escreverArtigoJornal
    print("Escrever artigo jornal");
  }
}

class Ana extends Cidado {}

void main(List<String> args) {
  Obama obama = Obama();
  obama.direitodeveres();
  obama.participarEleicao();
  Ana ana = Ana();
  ana.direitodeveres();
}
