import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              // text, number, emailAddress
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
              ),
              onSubmitted: (String e) {
                print("Valor digitado: $e");
              },
              controller: _textEditingController,
              // onChanged: (String e){
              //   print("Valor digitado: $e");
              // },
              // para senha
              // obscureText: true,
              // style: TextStyle(
              //   fontSize: 25,
              //   color: Colors.green,
              // ),
              // maxLength: 2,
              // maxLengthEnforced: true,
              // enabled: false,
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print("Valor digitado: ${_textEditingController.text}");
            },
            child: Text("Salvar"),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen
            ),
          )
        ],
      ),
    );
  }
}
