import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerCampo = TextEditingController();
  String _textoSalvo = "Nada Salvo";

  _salvar() async {
    String valorDigitado = _controllerCampo.text;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nome", valorDigitado);

    print(valorDigitado);
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoSalvo = prefs.getString("nome") ?? "Sem Valor";
    });
        print("recuperar: ${_textoSalvo} ");

  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("nome");
     print("remover: ${_textoSalvo} ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manipulação de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              _textoSalvo,
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: "Digite Algo"),
              controller: _controllerCampo,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _salvar,
                  child: const Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.blue, padding: EdgeInsets.all(15)),
                ),
                ElevatedButton(
                  onPressed: _recuperar,
                  child: const Text(
                    "Recuperar",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.blue, padding: EdgeInsets.all(15)),
                ),
                ElevatedButton(
                  onPressed: _remover,
                  child: const Text(
                    "Remover",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.blue, padding: EdgeInsets.all(15)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
