import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _preco = "";


  void _recuperarPreco () async {
    var url = Uri.parse('https://blockchain.info/ticker');
    http.Response response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);
    setState(() {
      _preco = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("imagens/bitcoin.png"),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "R\$ ${_preco}",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _recuperarPreco,
                child: const Text(
                  "Atualizar",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
