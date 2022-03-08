class Carro {
  final int velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 200]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade){
    bool deltaValido = ((_velocidadeAtual - novaVelocidade).abs() <= 5);
    if(deltaValido && novaVelocidade >= 0){
      this._velocidadeAtual = novaVelocidade;
    }
    
  }

  int? acelerar() {
    if ((_velocidadeAtual! + 5) >= velocidadeMaxima) {
      _velocidadeAtual = velocidadeMaxima;
    } else {
      (_velocidadeAtual = _velocidadeAtual! + 5);
      return _velocidadeAtual;
    }
  }

  int? frear() {
    if ((_velocidadeAtual! - 5) <= 0) {
      _velocidadeAtual = 0;
    } else {
      (_velocidadeAtual = _velocidadeAtual! - 5);
      return _velocidadeAtual;
    }
  }

  bool estaNoLimite() {
    return _velocidadeAtual == velocidadeMaxima;
  }

  bool estaParado(){
    return _velocidadeAtual == 0;
  }
}

void main(List<String> args) {
  var c1 = new Carro(320);

  while (!c1.estaNoLimite()) {
    print("A velocidade atual é ${c1.acelerar()} Km/h");
  }

  print("O carro chegou no máximo com velocidade ${c1._velocidadeAtual} Km/h");

  while (!c1.estaParado()) {
    print("A velocidade atual é ${c1.frear()} Km/h");
  }

  print("O carro parou com a velocidade ${c1._velocidadeAtual} Km/h");
}
