import 'package:flutter/material.dart';

// Código estruturado de forma a ser reaproveitado como componente
class WidgetReaproveitado extends StatelessWidget {
  final Color cor;
  final String texto;

  const WidgetReaproveitado({
    Key? key,
    required this.cor,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: cor,
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
