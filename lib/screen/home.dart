import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.home_title),
      ),
      body: charList.isNotEmpty
          ? ListView.builder(
              itemCount: charList.length,
              itemBuilder: (context, index) {
                return CharacterListItem(charList[index]);
              },
            )
          : const Center(
              child: Text('Nothing to see here'),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class CharacterListItem extends StatelessWidget {
  final _Character character;

  const CharacterListItem(this.character, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(character.name),
      subtitle: Text('Level ${character.level} ${character.cClass}'),
    );
  }
}

const charList = <_Character>[
  _Character('John', 5, 'Warrior'),
  _Character('Mary', 4, 'Wizard'),
  _Character('Jack', 6, 'Barbarian'),
];

class _Character {
  final String name;
  final int level;
  final String cClass;

  const _Character(this.name, this.level, this.cClass);
}
