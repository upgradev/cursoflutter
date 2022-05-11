import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Empresa"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("imagens/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae risus consequat, pretium velit quis, tristique purus. Morbi lacinia, eros sit amet tincidunt aliquam, felis nibh ultrices nisl, nec pellentesque augue turpis luctus risus. Ut hendrerit, erat ut ullamcorper dapibus, mi massa mattis ante, vitae consectetur orci purus nec nulla. Vivamus placerat diam quis rhoncus ultricies. Etiam semper lacus vel ultrices laoreet. Nullam sed fringilla massa, blandit consequat enim. Sed venenatis purus at ligula convallis elementum. Sed faucibus, sapien vel porttitor tempus, quam nunc iaculis diam, id maximus diam sem quis leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu magna in ex feugiat laoreet."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae risus consequat, pretium velit quis, tristique purus. Morbi lacinia, eros sit amet tincidunt aliquam, felis nibh ultrices nisl, nec pellentesque augue turpis luctus risus. Ut hendrerit, erat ut ullamcorper dapibus, mi massa mattis ante, vitae consectetur orci purus nec nulla. Vivamus placerat diam quis rhoncus ultricies. Etiam semper lacus vel ultrices laoreet. Nullam sed fringilla massa, blandit consequat enim. Sed venenatis purus at ligula convallis elementum. Sed faucibus, sapien vel porttitor tempus, quam nunc iaculis diam, id maximus diam sem quis leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu magna in ex feugiat laoreet."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae risus consequat, pretium velit quis, tristique purus. Morbi lacinia, eros sit amet tincidunt aliquam, felis nibh ultrices nisl, nec pellentesque augue turpis luctus risus. Ut hendrerit, erat ut ullamcorper dapibus, mi massa mattis ante, vitae consectetur orci purus nec nulla. Vivamus placerat diam quis rhoncus ultricies. Etiam semper lacus vel ultrices laoreet. Nullam sed fringilla massa, blandit consequat enim. Sed venenatis purus at ligula convallis elementum. Sed faucibus, sapien vel porttitor tempus, quam nunc iaculis diam, id maximus diam sem quis leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu magna in ex feugiat laoreet."
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae risus consequat, pretium velit quis, tristique purus. Morbi lacinia, eros sit amet tincidunt aliquam, felis nibh ultrices nisl, nec pellentesque augue turpis luctus risus. Ut hendrerit, erat ut ullamcorper dapibus, mi massa mattis ante, vitae consectetur orci purus nec nulla. Vivamus placerat diam quis rhoncus ultricies. Etiam semper lacus vel ultrices laoreet. Nullam sed fringilla massa, blandit consequat enim. Sed venenatis purus at ligula convallis elementum. Sed faucibus, sapien vel porttitor tempus, quam nunc iaculis diam, id maximus diam sem quis leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu magna in ex feugiat laoreet."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
