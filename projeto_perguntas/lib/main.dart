import 'package:flutter/material.dart';

void main() =>
    // porta de entrada
    runApp(PerguntaApp());

@override
class PerguntaApp extends StatelessWidget {
  void responder() {
    print("pergunta respondida");
  }

  // void Function() funcaoQueRetornaUmaOutraFuncao(){
  //   return (){
  //     print("Pergunta Respondida 2");
  //   };
  // }

  final perguntas = [
    "Qual é a sua cor favorita?",
    "Qual é o seu animal favorito?",
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text("Resposta 2"),
              onPressed: () {
                print("Resposta 2 foi selecionada");
              },
            ),
            ElevatedButton(
              child: Text("Resposta 3"),
              onPressed: () => print("Resposta 3"),
            ),
          ],
        ),
      ),
      // home: Text("Ola Flutter"),
    );
  }
}
