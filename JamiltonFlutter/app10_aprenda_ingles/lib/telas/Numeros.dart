import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  const Numeros({ Key? key }) : super(key: key);

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  final player = AudioPlayer();

  _executar(String nomeAudio){
    player.play(AssetSource("audios/"+nomeAudio+".mp3"));
  }

  @override
  Widget build(BuildContext context) {
     return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      // scrollDirection: Axis.vertical,
      children: [
        GestureDetector(
          onTap: () {
            _executar("1");
          },
          child: Image.asset("assets/imagens/1.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("2");
          },
          child: Image.asset("assets/imagens/2.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("3");
          },
          child: Image.asset("assets/imagens/3.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("4");
          },
          child: Image.asset("assets/imagens/4.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("5");
          },
          child: Image.asset("assets/imagens/5.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("6");
          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }
}