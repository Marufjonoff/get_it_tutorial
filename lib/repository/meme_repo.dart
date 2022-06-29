import 'dart:convert';

import 'package:get_it_tutorial/domain/models/meme.dart';
import 'package:http/http.dart' as http;

class MemeRepo {
  Future<Meme> getMeme() async {
    Uri uri = Uri.parse("https://some-random-api.ml/meme");
    http.Response response = await http.get(uri);
    print(response.body);
    Map<String, dynamic> singleMemeJson = jsonDecode(response.body);
    return Meme.fromJson(singleMemeJson);
  }
}