import "package:http/http.dart" as http;
import 'dart:convert';
import 'dart:async';

const CHAVE_YOUTUBE_API = "";
const ID_CANAL = "AndroidDevelopers";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    var url = Uri.parse(URL_BASE + "search?part=snippet&type=video&maxResults=20&order=date&key=${CHAVE_YOUTUBE_API}&q=${pesquisa}");
    http.Response response = await http.get(url);

    if(response.statusCode == 200){

      
      Map<String, dynamic> dadosJson = json.decode(response.body);
      print("Resultado: "+dadosJson["items"][0]["snippet"]["title"].toString());

    }
    else{
      print("error");
    }

  }
}
