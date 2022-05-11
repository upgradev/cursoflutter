import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Campo Switch"),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              subtitle: Text("Teste subtitle"),
              title: Text("Receber Notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Escolha Não ativar: ${_escolhaUsuario.toString()} ");
              },
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
            )
            // SwitchListTile(
            //   title: Text("Carregar imagens automaticamente?"),
            //   value: _escolhaConfig,
            //   onChanged: (bool valor) {
            //     setState(() {
            //       _escolhaConfig = valor;
            //     });
            //   },
            // ),
            // Switch(
            //   value: _escolhaUsuario,
            //   onChanged: (bool valor) {
            //     setState(() {
            //       _escolhaUsuario = valor;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
