import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  const Bichos({Key? key}) : super(key: key);

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  final player = AudioPlayer();

  _executar(String nomeAudio) {
    player.play(AssetSource("audios/" + nomeAudio + ".mp3"));
  }

  @override
  Widget build(BuildContext context) {
    // double largura = MediaQuery.of(context).size.width;
    // double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      // scrollDirection: Axis.vertical,
      children: [
        GestureDetector(
          onTap: () {
            _executar("cao");
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
