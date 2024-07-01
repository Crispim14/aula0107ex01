import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<String> personagens = [
    'Luke Skywalker',
    'Darth Vader',
    'Leia Organa',
    'Han Solo',
    'Yoda'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personagens de Star Wars',
      home: Scaffold(
        body: ListView.builder(
            itemCount: personagens.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(personagens[index]),
              );
            }),
      ),
    );
  }
}
