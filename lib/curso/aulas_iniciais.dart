import 'package:flutter/material.dart';
import 'package:curso_flutterando/curso/aula_sobre_estado.dart';

class AulaInicial extends StatelessWidget {
  // Construtor: Recebe os parametros usados na tela.

  const AulaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp é um dos mais importantes widgets pai.
    // Com ele dizemos ao flutter para usar toda o poder do Material Design
    return MaterialApp(
        // theme informa como queremos definir as configs padroes de cores
        theme: ThemeData(primarySwatch: Colors.red),
        title: 'Curso Flutterando',
        debugShowCheckedModeBanner: false,
        home: const AulaSobreEstado(
          title: 'Flutterando',
        ));
  }
}
