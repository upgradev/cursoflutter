import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _resultado = "Resultado";
  TextEditingController _controllerCep = TextEditingController();

  _recuperarCep() async {
    String cepDigitado = _controllerCep.text;
    var url = Uri.parse('https://viacep.com.br/ws/${cepDigitado}/json/');
    http.Response response = await http.get(url);
    // import 'dart:convert';
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    setState(() {
      _resultado = "${logradouro}, ${complemento}, ${bairro} ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de Serviço Web"),
      ),
      body: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Digite um cep: 12345678"),
                style: TextStyle(
                  fontSize: 20,
                ),
                controller: _controllerCep,
              ),
              ElevatedButton(
                onPressed: _recuperarCep,
                child: Text("Clique Aqui"),
              ),
              Text(_resultado),
            ],
          )),
    );
  }
}
