import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rpg_sheet/widgets/empty_list.dart';

class CharacterCreator extends StatelessWidget {
  const CharacterCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.characterCreatorTitle),
      ),
      body: const EmptyListView(),
    );
  }
}
