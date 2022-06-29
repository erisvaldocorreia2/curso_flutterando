import 'package:flutter/material.dart';

class AulaInicial extends StatelessWidget {
  // Construtor: Recebe os parametros usados na tela.
  // Caso um parametro não tenha um valor default, ele se torna obrigatorio
  // Parametros obrigatórios necessitam da chave 'required'
  const AulaInicial({Key? key, required this.title}) : super(key: key);

  // Parametro criado para receber um valor na tela
  // Todo parametro precisa ser incluido no construtor.
  final String title;

  @override
  Widget build(BuildContext context) {
    // MaterialApp é um dos mais importantes widgets pai.
    // Com ele dizemos ao flutter para usar toda o poder do Material Design
    return MaterialApp(
      // theme informa como queremos definir as configs padroes de cores
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'Curso Flutterando',
      debugShowCheckedModeBanner: false,
      // ignore: avoid_unnecessary_containers
      home: Container(
        child: Center(
          child: Text(
            // usando o parametro recebido na classe no momento de instancia
            title,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
