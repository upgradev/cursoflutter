class Casa {
  // atributos
  String? cor;

  // metodos
  // void abrirJanela(int qtdeJanelas){
  //   print("Abrir janela da casa $cor");
  //   print("Janelas: $qtdeJanelas");
  // }

  void abrirJanela() {
    print("Abrir janela da casa $cor");
  }

  void abrirPorta() {
    print("Abrir porta da casa $cor");
  }

  void abrirCasa() {
    this.abrirJanela();
    this.abrirPorta();
  }
}
