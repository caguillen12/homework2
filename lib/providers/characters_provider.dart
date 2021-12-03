import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:homework/api/characters.graphql.dart';
import 'package:homework/models/character.dart';
import 'package:homework/providers/api_provider.dart';

final charactersProvider = ChangeNotifierProvider((ref) {
  final charactersGraphQL = ref.watch(apiProvider).characters;

  return CharactersNotifier(charactersAPI: charactersGraphQL);
});

class CharactersNotifier extends ChangeNotifier {
  final CharactersGraphQL charactersAPI;

  CharactersNotifier({
    required this.charactersAPI,
  });

  List<Character> _characters = [];
  List<Character> get characters => _characters;

  Future<List<Character>> getCharacters(c) async {
    final data = await charactersAPI.getCharacters(c); // List<Characters>

    _characters = data;
    return _characters;
  }
}
