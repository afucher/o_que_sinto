import 'package:flutter/material.dart';

import 'data/sentimento.dart';
import 'data/sentimentos.dart';

class ListaSentimento extends StatelessWidget {
  final List<Sentimento> sentimentos;

  const ListaSentimento(
    this.sentimentos, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: sentimentos
          .map(
            (sentimento) => FilledButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(sentimento.corBase)),
              onPressed: () {
                final sentimentosFilhos = obterSentimento(sentimento);
                sentimentosFilhos.isEmpty
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Você está com ${sentimento.nome}'),
                      ))
                    : Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Scaffold(
                            appBar: AppBar(
                              title: Text(sentimento.nome),
                              backgroundColor: sentimento.corBase,
                            ),
                            body: ListaSentimento(sentimentosFilhos),
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
    );
  }
}
