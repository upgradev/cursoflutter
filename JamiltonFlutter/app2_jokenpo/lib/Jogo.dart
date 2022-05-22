import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escolha uma opção abaixo!";

  _opcaoSelecionada(String escolhausuario) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }

    // validação do ganhador
    if ((escolhausuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhausuario == "tesoura" && escolhaApp == "papel") ||
        (escolhausuario == "papel" && escolhaApp == "pedra")) {
      setState(() {
        this._mensagem = "Parabéns!! Você ganhou";
      });
    } else if ((escolhaApp == "pedra" && escolhausuario == "tesoura") ||
        (escolhaApp == "tesoura" && escolhausuario == "papel") ||
        (escolhaApp == "papel" && escolhausuario == "pedra")) {
      setState(() {
        this._mensagem = "Você perdeu";
      });
    } else {
      setState(() {
        this._mensagem = "Empatamos";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //  GestureDetector(
          //    onTap: (){print("um clique imagem clicada");},
          //    onDoubleTap: (){print("dois clique imagem clicada");},
          //    onLongPress: (){print("clique longo na imagem");},
          //    child:
          //  ),
          // Image.asset(
          //   "imagens/padrao.png",
          // ),
          Image(image: _imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () => _opcaoSelecionada("pedra"),
                  child: Image.asset("imagens/pedra.png", height: 90)),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("papel"),
                  child: Image.asset("imagens/papel.png", height: 90)),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("tesoura"),
                  child: Image.asset("imagens/tesoura.png", height: 90)),
              // Image.asset(
              //   "imagens/pedra.png",
              //   height: 90,
              // ),
              // Image.asset(
              //   "imagens/papel.png",
              //   height: 90,
              // ),
              // Image.asset(
              //   "imagens/tesoura.png",
              //   height: 90,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
