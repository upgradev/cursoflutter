import 'package:app7_youtube/Api.dart';
import 'package:app7_youtube/model/Video.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import "package:flutter_youtube/flutter_youtube.dart";

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
  void initState() {
    // TODO: implement initState conf iniciais
    super.initState();
    print("chamado 1 - initState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies para construir a interface precisa de dependencias, ex carregar listagem de videos
    super.didChangeDependencies();
    print("chamado 2 - didChangeDependencies");
  }

  @override
  void dispose() {
    // TODO: implement dispose discart de items ex parar um carregamento, pausar algum evento
    super.dispose();
    print("chamado 4 - dispose");
  }

  @override
  void didUpdateWidget(covariant Inicio oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("chamado 2 - didUpdateWidget");
  }

  @override
  Widget build(BuildContext context) {
    //construir a aplicacao
    print("chamado 3 - build");
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
                  return GestureDetector(
                    onTap: () {
                      FlutterYoutube.playYoutubeVideoById(
                        apiKey: CHAVE_YOUTUBE_API,
                        videoId: video.id,
                        autoPlay: true,
                        fullScreen: true
                      );
                    },
                    child: Column(
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
                    ),
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
