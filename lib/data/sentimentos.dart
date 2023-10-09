import 'package:flutter/material.dart';

import 'sentimento.dart';

final sentimentosPrincipais = [
  Sentimento('Raiva', Colors.red),
  Sentimento('Tristeza', Colors.purple),
  Sentimento('Surpresa', Colors.cyan),
  Sentimento('Alegria', Colors.green),
  Sentimento('Amor', Colors.yellow),
  Sentimento('Medo', Colors.orange),
];

final sentimentosRaiva = [
  Sentimento('Furioso', Colors.red),
  Sentimento('Exasperado', Colors.red),
  Sentimento('Irritado', Colors.red),
  Sentimento('Inveja', Colors.red),
  Sentimento('Desgosto', Colors.red),
];

List<Sentimento> obterSentimento(Sentimento sentimento) {
  switch (sentimento.nome) {
    case 'Raiva':
      return sentimentosRaiva;
    default:
      return [];
  }
}
