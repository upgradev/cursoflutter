import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Floating Action Button")),
      body: const Text("Conteudo"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add_shopping_cart),
        label: Text("Adicionar"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 6,
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // mini: true,
        onPressed: () {
          print("Resultado botao pressionado");
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //     child: const Icon(Icons.add),
      //     backgroundColor: Colors.purple,
      //     foregroundColor: Colors.white,
      //     elevation: 6,
      //     // mini: true,
      //     onPressed: () {
      //       print("Resultado botao pressionado");
      //     }),
      bottomNavigationBar: BottomAppBar(
        //  shape: CircularNotchedRectangle(), //efeito entre o floating e o bottomappbar
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
