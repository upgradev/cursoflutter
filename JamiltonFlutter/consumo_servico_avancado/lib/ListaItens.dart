import 'package:consumo_servico_avancado/Post.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:convert';
import 'dart:async';

class ListaItens extends StatefulWidget {
  const ListaItens({Key? key}) : super(key: key);

  @override
  State<ListaItens> createState() => _ListaItensState();
}

class _ListaItensState extends State<ListaItens> {
  // Future<Map> _recuperarPreco() async {
  //   var url = Uri.parse('https://blockchain.info/ticker');
  //   http.Response response = await http.get(url);
  //   return json.decode(response.body);
  // }

  String _urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagens() async {
    var url = Uri.parse('${_urlBase}/posts');
    http.Response response = await http.get(url);
    var dadosJson = json.decode(response.body);
    List<Post> postagens = [];

    for (var post in dadosJson) {
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add(p);
    }

    return postagens;
    // List<Post> lista = [];
    // Post post = Post();
    // lista.add(post);
  }

  void _post() async {

    Post post = Post(120, null, "Titulo post", "Corpo da postagem post");

    var url = Uri.parse('${_urlBase}/posts');
    var corpo = json.encode(post.toJson());
    http.Response response = await http.post(
      url,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );
    print(response.statusCode);
    print(response.body);
  }

  void _put() async {
    var url = Uri.parse('${_urlBase}/posts/2');
    var corpo = json.encode({"title": 'titulo alterado', "body": 'corpo da postagem alterado', "userId": 120, "id": null});
    http.Response response = await http.put(
      url,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );
    print(response.statusCode);
    print(response.body);
  }

  void _patch() async {
    var url = Uri.parse('${_urlBase}/posts/2');
    var corpo = json.encode({
      "body": 'corpo da postagem alterado',
      "userId": 120,
    });
    http.Response response = await http.patch(
      url,
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: corpo,
    );
    print(response.statusCode);
    print(response.body);
  }

  void _delete() async {
    var url = Uri.parse('${_urlBase}/posts/2');
    http.Response response = await http.delete(url);
    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo de serviço avançado"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: _post,
                  child: Text("Salvar"),
                ),
                ElevatedButton(
                  onPressed: _patch,
                  child: Text("Atualizar"),
                ),
                ElevatedButton(
                  onPressed: _delete,
                  child: Text("Remover"),
                ),
              ],
            ),
            Expanded(
                child: FutureBuilder<List<Post>>(
              future: _recuperarPostagens(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:

                  case ConnectionState.waiting:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );

                  case ConnectionState.active:

                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      print("Lista: error ao carregar");
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          List<Post> lista = snapshot.data!;
                          Post post = lista[index];

                          return ListTile(
                            title: Text(post.title),
                            subtitle: Text(post.id.toString()),
                          );
                        },
                      );
                    }
                    break;
                }
                return Text("");
              },
            ))
          ],
        ),
      ),
    );
  }
}
