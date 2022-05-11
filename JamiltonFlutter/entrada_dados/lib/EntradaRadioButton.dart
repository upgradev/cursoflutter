import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  int? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campo RadioButton"),
      ),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text("Masculino"),
              value: 1,
              groupValue: _escolhaUsuario,
              onChanged: (int? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: 2,
              groupValue: _escolhaUsuario,
              onChanged: (int? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text("teste"),
              value: 3,
              groupValue: _escolhaUsuario,
              onChanged: (int? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
             ElevatedButton(
              onPressed: () {
                print("Resultado: ${_escolhaUsuario.toString()} ");
              },
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
            )

            // Text("Masculino"),
            // Radio(
            //   value: "m",
            //   groupValue: _escolhaUsuario,
            //   onChanged: (String? escolha) {
            //     setState(() {
            //       _escolhaUsuario = escolha;
            //     });
            //   },
            // ),
            // Text("Feminino"),
            // Radio(
            //   value: "f",
            //   groupValue: _escolhaUsuario,
            //   onChanged: (String? escolha) {
            //     setState(() {
            //       _escolhaUsuario = escolha;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
