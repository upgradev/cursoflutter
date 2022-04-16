abstract class Animal {
  String? cor;

  void correr();
}

class Cao extends Animal {
  void latir() {
    print("Latir");
  }

  @override
  void correr() {
    // TODO: implement correr
    print("Correr como cão");
  }
}

class Passaro extends Animal {
  void voar() {
    print("Voar");
  }

  @override
  void correr() {
    // TODO: implement correr
    print("Correr como passaro");
  }
}

void main(List<String> args) {
  Cao cao = Cao();
  cao.latir();
  cao.correr();
  // Animal animal = Animal();
  // animal.cor = "Marrom";
  // animal.correr();
  // print(animal.cor);


}
