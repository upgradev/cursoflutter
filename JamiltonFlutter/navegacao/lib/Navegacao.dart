import 'package:flutter/material.dart';
import 'package:navegacao/TelaSecundaria.dart';

class Navegacao extends StatefulWidget {
  const Navegacao({Key? key}) : super(key: key);

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegação"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // rotas nomeadas
                Navigator.pushNamed(context, "/secundaria");

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => TelaSecundaria(valor: "Teste"),
                //   ),
                // );
              },
              child: Text("Ir para a segunda tela!"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
            )
          ],
        ),
      ),
    );
  }
}
