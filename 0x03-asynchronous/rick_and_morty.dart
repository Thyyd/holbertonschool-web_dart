import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final Uri apiUrl = Uri.parse('https://rickandmortyapi.com/api/character');
    final response = await http.get(apiUrl);

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch characters: ${response.statusCode}');
    }

    final Map<String, dynamic> data = json.decode(response.body);
    for (var character in data['results']) {
      print(character['name']);
    }
  }
  catch (error) {
    print('error caught: $error');
  }
}