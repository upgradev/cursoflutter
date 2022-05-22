import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample  ';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  var _texto = "Ana";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _texto = "Curso flutter";
                });
              },
              child: Text("Clique Aqui"),
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.amber
              // ),
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
      // Padding(
      //   padding: EdgeInsets.all(16),
      //   child: Text("Conteudo principal"),
      // ),

      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.lightGreen,
      //   child: Padding(
      //     padding: EdgeInsets.all(16),
      //     child: Row(
      //       children: [
      //         Text("Texto 1"),
      //         Text("Texto 2"),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
