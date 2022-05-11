import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campo CheckBox"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo"),
              // activeColor: Colors.red,
              // selected: _estaSelecionado, deixar com a cor do activeColor
              // secondary: Icon(Icons.add_box), icone no inicio
              value: _comidaBrasileira,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaBrasileira = valor!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("A melhor comida do mundo"),
              // activeColor: Colors.red,
              // selected: _estaSelecionado, deixar com a cor do activeColor
              // secondary: Icon(Icons.add_box), icone no inicio
              value: _comidaMexicana,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaMexicana = valor!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Comida Brasileira ${_comidaBrasileira.toString()} " +
                    "Comida Mexicana ${_comidaMexicana.toString()}");
              },
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
            )

            // Text("Comida Brasileira"),
            // Checkbox(
            //   value: _estaSelecionado, //valor inicial
            //   onChanged: (bool? valor){
            //     setState(() {
            //       _estaSelecionado = valor!;
            //     });
            //     print("checkbox: $valor ");
            //   },

            // )
          ],
        ),
      ),
    );
  }
}
