import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _valor = 5;
  String _label = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Campo Slider"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
              value: _valor,
              min: 0,
              max: 10,
              divisions: 5,
              activeColor: Colors.red,
              inactiveColor: Colors.purple,
              label: _label,
              onChanged: (double novovalor){
                  setState(() {
                    _valor = novovalor;
                    _label = "$novovalor";
                    print("Valor: $_valor");
                  });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
