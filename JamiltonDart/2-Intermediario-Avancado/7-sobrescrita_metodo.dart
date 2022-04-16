class Animal {
  String? cor;
  void dormir() {
    print("dormir");
  }

  Animal(this.cor);

  void correr() {
    print("Correr ");
    print("como ");
    print("um ");
  }
}

class Cao extends Animal {
  String? corOrelha;
  void latir() {
    print("Latir");
  }

  Cao(String cor, this.corOrelha) : super(cor);

  @override
  void correr() {
    super.correr();
    print("cão");
  }
}

class Passaro extends Animal {
  String? corBico;
  void voar() {
    print("voar");
  }

  Passaro(String cor, this.corBico) : super(cor);

  @override
  void correr() {
    super.correr();
    print("Passaro");
  }
}

void main(List<String> args) {
  Cao cao = Cao("Marrom", "Branco");
  Passaro passaro = Passaro("Vermelho", "Amarelo");
  
  print("Passaro cor: ${passaro.cor} ");
  print("Passaro cor bico: ${passaro.corBico} ");
  print("Cão cor: ${cao.cor} ");

  // cao.correr();
  // passaro.correr();
}
