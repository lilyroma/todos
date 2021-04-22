import 'package:flutter/material.dart';

import 'todoapp.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoApp(),
    );
  }
}
