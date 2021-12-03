import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:homework/models/character.dart';

class CharacterListItem extends HookWidget {
  final Character character;

  const CharacterListItem({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        width: double.infinity,
        child: Container(
          width: 500,
          child: Center(
            child: Row(
              children: [
                Container(
                    width: 150, child: Image.network(character.image ?? '')),
                SizedBox(width: 25),
                Expanded(child: Text(character.name ?? '')),
              ],
            ),
          ),
        ));
  }
}
