import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import "./questao.dart";
import "./resposta.dart";
import "./resultado.dart";

void main() =>
    // porta de entrada
    runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": [
        {'texto': "Preto", 'pontuacao': 10},
        {'texto': "Vermelho", 'pontuacao': 5},
        {'texto': "Verde", 'pontuacao': 3},
        {'texto': "Branco", 'pontuacao': 1},
      ]
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {"texto": "Coelho", 'pontuacao': 10},
        {"texto": "Cobra", 'pontuacao': 5},
        {"texto": "Elefante", 'pontuacao': 3},
        {"texto": "Leão", 'pontuacao': 1},
      ]
    },
    {
      "texto": "Qual é o seu instrutor favorito?",
      "respostas": [
        {"texto": "Leo", 'pontuacao': 10},
        {"texto": "Maria", 'pontuacao': 5},
        {"texto": "João", 'pontuacao': 3},
        {"texto": "Pedro", 'pontuacao': 1},
      ]
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada =0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada].cast()["respostas"] : [];
    // List<Widget> widgets = respostas.map((texto) => Resposta(texto, _responder)).toList();

    // for (var textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Questionario(perguntas: _perguntas, perguntaSelecionada: _perguntaSelecionada, responder: _responder)
            // ? Column(
            //     children: [
            //       Questao(_perguntas[_perguntaSelecionada]["texto"].toString()),
            //       ...respostas.map((texto) => Resposta(texto, _responder)).toList()
            //       // ...widgets
            //       // Resposta("Resposta 1", _responder),
            //       // Resposta("Resposta 2", _responder),
            //       // Resposta("Resposta 3", _responder),
            //     ],
            //   )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
      // home: Text("Ola Flutter"),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
