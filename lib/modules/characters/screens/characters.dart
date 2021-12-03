import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:homework/common/components/main_app_bar.dart';
import 'package:homework/modules/characters/components/character_list_item.dart';
import 'package:homework/providers/characters_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var items = [];
var c = 0;

class CharacterPage extends HookWidget {
  const CharacterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isLoading = useState(false);
    final _charactersProvider = useProvider(charactersProvider);
    final _allLoaded = useState(false);
    final controller = useScrollController();

    _loadData() async {
      _isLoading.value = true;

      c++;
      await _charactersProvider.getCharacters(c);
      var newData = items.length >= 826 ? [] : _charactersProvider.characters;
      if (newData.isNotEmpty) {
        items.addAll(newData);
      }

      _isLoading.value = false;
      _allLoaded.value = newData.isEmpty;
    }

    useEffect(() {
      _loadData();
      controller.addListener(() {
        if (controller.position.pixels >= controller.position.maxScrollExtent &&
            !_isLoading.value) {
          _loadData();
        }
      });
      return () => controller.removeListener;
    }, [controller]);

    return Scaffold(
        appBar: CustomMainAppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          if (items.isNotEmpty) {
            return ListView.builder(
                controller: controller,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final character = items[index];

                  return CharacterListItem(
                    character: character,
                  );
                });
          } else {
            return LoadingIndicator();
          }
        }));
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
