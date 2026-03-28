// ignore_for_file: avoid_print

import 'dart:io';

void main() async {
  print('Creating assets directory...');
  final dir = Directory('assets');
  if (!await dir.exists()) {
    await dir.create();
  }

  print('Fetching exercises from RapidAPI...');
  final url = Uri.parse('https://exercisedb.p.rapidapi.com/exercises?limit=2000');
  final request = await HttpClient().getUrl(url);
  request.headers.add('x-rapidapi-host', 'exercisedb.p.rapidapi.com');
  request.headers.add('x-rapidapi-key', '58f5b2be97msh58d451fcb0f3dd3p1c8734jsn66ed0253e3c0');
  
  final response = await request.close();
  if (response.statusCode == 200) {
    final file = File('assets/exercises.json');
    await response.pipe(file.openWrite());
    print('Successfully saved exercises to assets/exercises.json!');
  } else {
    print('Failed to fetch. Status code: ${response.statusCode}');
  }
}
