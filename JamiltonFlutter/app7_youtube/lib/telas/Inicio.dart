import 'package:app7_youtube/Api.dart';
import 'package:app7_youtube/model/Video.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  String? pesquisa;

  Inicio(this.pesquisa, {Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos(String pesquisa) {
    Api api = Api();
    
    return api.pesquisar(pesquisa);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>?>(
      future: _listarVideos(widget.pesquisa!),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  List<Video> videos = snapshot.data!;
                  Video video = videos[index];
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  video.imagem!,
                                ))),
                      ),
                      ListTile(
                        title: Text(video.titulo!),
                        subtitle: Text(video.canal!),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  height: 2,
                  color: Colors.grey,
                ),
                itemCount: snapshot.data!.length,
              );
            } else {
              return const Center(child: Text("Nenhum dado a ser exibido"));
            }
            break;
          default:
            Text("");
        }
        return Text("");
      },
    );
  }
}
