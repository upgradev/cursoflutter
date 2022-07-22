import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool primeriExecucao = true;
  double volume = 0.5;

  _executar() async {
    audioPlayer.setVolume(volume);
    if (primeriExecucao) {
      audioPlayer.play((AssetSource('audios/musica.mp3')));
      primeriExecucao = false;
    } else {
      audioPlayer.resume();
    }

    // String url = "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3";
    // final resultado = await audioPlayer.play(DeviceFileSource(url));
  }

  _pausar() async {
    await audioPlayer.pause();
  }

  _parar() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Executando sons"),
      ),
      body: Column(
        children: [
          //slider
          Slider(
            value: volume,
            min: 0,
            max: 1,
            divisions: 10,
            onChanged: (novoVolume) {
              setState(() {
                volume = novoVolume;
              });
              audioPlayer.setVolume(novoVolume);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  child: Image.asset("assets/imagens/executar.png"),
                  onTap: () {
                    _executar();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  child: Image.asset("assets/imagens/pausar.png"),
                  onTap: () {
                    _pausar();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  child: Image.asset("assets/imagens/parar.png"),
                  onTap: () {
                    _parar();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
