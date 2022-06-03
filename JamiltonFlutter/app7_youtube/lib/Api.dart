import 'dart:async';
import 'dart:convert';

import 'package:app7_youtube/model/Video.dart';
import "package:http/http.dart" as http;

const CHAVE_YOUTUBE_API = "";
const ID_CANAL = "AndroidDevelopers";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  Future<List<Video>?> pesquisar(String pesquisa) async {
    var url = Uri.parse(URL_BASE + "search?part=snippet&type=video&maxResults=20&order=date&key=${CHAVE_YOUTUBE_API}&q=${pesquisa}");
    http.Response response = await http.get(url);
    print("pesquisa: "+ pesquisa);
    print("status: " + response.statusCode.toString());
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Video> videos = dadosJson["items"].map<Video>((map) {
        return Video.fromJson(map);
        // return Video.converterJson(map);
      }).toList();

      return videos;
      // for (var video in dadosJson["items"]) {
      //   print(video.toString());
      // }

    } else {
      print("error");
    }
  }
}
