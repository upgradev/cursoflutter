import 'package:app7_youtube/CustomSearchDelegate.dart';
import 'package:app7_youtube/telas/Biblioteca.dart';
import 'package:app7_youtube/telas/EmAlta.dart';
import 'package:app7_youtube/telas/Inicio.dart';
import 'package:app7_youtube/telas/Inscricao.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _resultado = "";
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(_resultado),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.grey,
          opacity: 1,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                String? res = await showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
                setState(() {
                  _resultado = res!;
                });
              },
              icon: Icon(Icons.search)),
          // IconButton(
          //   onPressed: () {
          //     print("Videocam");
          //   },
          //   icon: Icon(Icons.videocam),
          // ),

          // IconButton(
          //   onPressed: () {
          //     print("conta");
          //   },
          //   icon: Icon(Icons.account_circle),
          // ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.orange,
            label: "Início",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.red,
            label: "Em Alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            label: "Inscrições",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.green,
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
