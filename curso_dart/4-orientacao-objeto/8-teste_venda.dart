import 'model/cliente.dart';
import 'model/produto.dart';
import 'model/venda.dart';
import 'model/venda_item.dart';

void main() {
  var venda = new Venda(
    cliente: new Cliente(nome: "Franscisco Cardoso", cpf: "123.456.789-00"),
    itens: <VendaItem>[
      VendaItem(quantidade: 30, produto: new Produto(codigo: 1, nome: "lapis", preco: 6.00, desconto: 0.5)),
      
    ],
  );

  print("O valor total da venda é ${venda.valorTotal}");
}
