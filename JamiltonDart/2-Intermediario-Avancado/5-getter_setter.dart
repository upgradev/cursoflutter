class Conta {
  double saldo = 0;
  double _saque = 0;

  // getter
  double get saque {
    return this._saque;
  }

  set saque(double saque) {
    if (saque > 0 && saque <= 500) {
      this._saque = saque;
    }
  }
}

void main(List<String> args) {
  Conta conta = Conta();
  conta.saque = 500;

  print(conta.saque);
}
