import 'dart:convert';
import 'package:http/http.dart';
import 'package:soccer_app/model/soccermodel.dart';

class SoccerApi {
  final String apiURl = "https://v3.football.api-sports.io/fixtures?live=all";

  static const api_key =
      "6c3c06506e01d3fcb9a813d88beb5a95"; //evryone use your own API key from api.football.com
  static const Headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_key
  };
  //completeting our model
  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(apiURl, headers: Headers);
    var body;
    if (res.statusCode ==
        200) // it indicates that we are connected to our database
    {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api services: ${body}");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromjson(item))
          .toList();
      return matches;
    }
  }
}
