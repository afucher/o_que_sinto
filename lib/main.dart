import 'package:flutter/material.dart';

import 'data/sentimentos.dart';
import 'lista_sentimentos.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'O que sinto?',
      home: const Inicial(),
    );
  }
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('O que sinto?'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListaSentimento(sentimentosPrincipais),
      ),
    );
  }
}
