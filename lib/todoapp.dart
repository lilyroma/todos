import 'package:flutter/material.dart';

import 'bottombar.dart';

final inputkey = UniqueKey();

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint('TodoApp/build');
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
          children: [
            const Title(),
            const Input(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class Title extends StatelessWidget {
  const Title();
  @override
  Widget build(BuildContext context) {
    debugPrint('Title/build');
    return Text(
      'todos',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.w100,
        color: Color.fromARGB(37, 47, 47, 247),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input();
  @override
  Widget build(BuildContext context) {
    debugPrint('Input/build');
    return TextField(
      key: inputkey,
      decoration: const InputDecoration(
        labelText: 'What?',
        border: OutlineInputBorder(),
      ),
    );
  }
}
