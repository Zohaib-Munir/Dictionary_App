import 'dart:convert' as convert;

import 'package:dictionary_app/model/word.dart';
import 'package:http/http.dart' as http;

class WordApi {
  Future<Word> fetchWord({required String word}) async {
    final baseUrl =
        "https://www.dictionaryapi.com/api/v3/references/collegiate/json/$word?key=3402241d-d7f3-4856-9e94-1a39ce34aab9";
    Uri uri = Uri.parse(baseUrl);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body)?[0];

      final meaning = data['shortdef']?[0];
      final audioFile = data['hwi']['prs'].length != 0
          ? data['hwi']['prs'][0]['sound']['audio']
          : "";
      return Word(word: word, meaning: meaning, audioFile: audioFile);
    } else {
      throw Exception("Failed To Load Data");
    }
  }
}
