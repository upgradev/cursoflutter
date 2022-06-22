import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _lista = ["Ana", "Maria", "João"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widgets"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _lista.length,
                itemBuilder: (context, index) {
                  final item = _lista[index];
                  return Dismissible(
                    background: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    //direction: DismissDirection.horizontal,
                    onDismissed: (direction) {
                      if(direction == DismissDirection.endToStart){
                        print("direction: endToStart");
                      }
                      else 
                      if(direction == DismissDirection.startToEnd){
                        print("direction: startToEnd");
                      }
                      setState(() {
                        _lista.removeAt(index);
                      });
                    },
                    key: Key(item),
                    child: ListTile(
                      title: Text(item),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
