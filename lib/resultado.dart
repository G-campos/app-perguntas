import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.texto, this.quandoSelecionado, {super.key});

  final String texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Parabéns',
          style: TextStyle(fontSize: 28),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: quandoSelecionado,
            child: Text(
              texto,
              style: const TextStyle(fontSize: 28),
            ),
          ),
        ),
      ],
    );
  }
}
