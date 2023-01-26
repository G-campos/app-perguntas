import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    // List<Map<String, Object>> respostas = temPerguntaSelecionada
    //     ? perguntas[perguntaSelecionada]['respostas']
    //         as List<Map<String, Object>>
    //     : [];

    return Column(
      children: <Widget>[
        Questao(
          perguntas[perguntaSelecionada]['texto'].toString(),
        ),
        ...respostas.map((texto) => Resposta(texto, responder)).toList(),
        // ...respostas
        //     .map((resp) => Resposta(resp['texto'] as String, quandoResponder))
        //     .toList(),
      ],
    );
  }
}
