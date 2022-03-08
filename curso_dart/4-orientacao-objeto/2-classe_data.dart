class Data {
  int? dia;
  int? mes;
  int? ano;

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterFormatada();
  }
}

void main(List<String> args) {
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  String data1 = dataAniversario.obterFormatada();

  print("data do aniversario é $data1");
  print("data da compra é ${dataCompra.obterFormatada()}");

  print(dataCompra.toString());

  

  // Data d2 = dataCompra;
  // String s1 = dataCompra.toString();


}
