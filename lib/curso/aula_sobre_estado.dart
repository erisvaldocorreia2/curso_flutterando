import 'package:flutter/material.dart';

class AulaSobreEstado extends StatefulWidget {
  const AulaSobreEstado({Key? key}) : super(key: key);

  // essa é a classe princiapal. ela cria o estado contendo as informações
  // que poderemos controlar de forma a remontar a tela conforme dados
  // forem sendo alterados.
  @override
  State<AulaSobreEstado> createState() => _AulaSobreEstadoState();
}

// esse _ no inicio indica que é uma classe privada
class _AulaSobreEstadoState extends State<AulaSobreEstado> {
  // usamos o _ antes de um nome para indicar uso privado da classe
  // essa variavel declarada na classe estado é local
  // quando esta variavel for modificada usando o setState
  // o método build irá reconstruir a tela exibindo os novos valores
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('contador: $_count'),
      onTap: () {
        // usamos o setState para notificarmos o build de que houve uma
        // alteração no estado e precisamos que a tela seja modificada
        setState(() {
          // usamos a função ou ação que desejamos aplicar dentro do setState
          // para que o build entenda a necessidade de atualizar a tela.
          _count++;
        });
      },
    );
  }
}
