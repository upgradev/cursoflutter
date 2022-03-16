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

  final _perguntas = const [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": [
        {'texto': "Preto", 'nota': 10},
        {'texto': "Vermelho", 'nota': 5},
        {'texto': "Verde", 'nota': 3},
        {'texto': "Branco", 'nota': 1},
      ]
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": [
        {"texto": "Coelho", 'nota': 10},
        {"texto": "Cobra", 'nota': 5},
        {"texto": "Elefante", 'nota': 3},
        {"texto": "Leão", 'nota': 1},
      ]
    },
    {
      "texto": "Qual é o seu instrutor favorito?",
      "respostas": [
        {"texto": "Leo", 'nota': 10},
        {"texto": "Maria", 'nota': 5},
        {"texto": "João", 'nota': 3},
        {"texto": "Pedro", 'nota': 1},
      ]
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
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
            : Resultado(),
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
