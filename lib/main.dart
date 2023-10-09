import 'package:flutter/material.dart';

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

class Sentimento {
  String nome;
  Color corBase;
  Sentimento(this.nome, this.corBase);
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    final sentimentos = [
      Sentimento('Raiva', Colors.red),
      Sentimento('Tristeza', Colors.purple),
      Sentimento('Surpresa', Colors.cyan),
      Sentimento('Alegria', Colors.green),
      Sentimento('Amor', Colors.yellow),
      Sentimento('Medo', Colors.orange),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('O que sinto?'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: sentimentos
              .map(
                (sentimento) => FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(sentimento.corBase)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => Scaffold(
                          appBar: AppBar(
                            title: Text(sentimento.nome),
                            backgroundColor: sentimento.corBase,
                          ),
                          body: const Text('mais sentimentos'),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    sentimento.nome,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
