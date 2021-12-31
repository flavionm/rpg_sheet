import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const _RpgSheet());
}

class _RpgSheet extends StatelessWidget {
  const _RpgSheet() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPG Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
