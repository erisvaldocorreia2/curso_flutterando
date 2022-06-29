import 'package:flutter/material.dart';
import 'package:curso_flutterando/curso/aula_sobre_estado.dart';
import 'package:curso_flutterando/curso/aula_controller.dart';

class AulaInicial extends StatelessWidget {
  // Construtor: Recebe os parametros usados na tela.
  const AulaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AnimatedBBuilder é usado para controlar alterações animadas
    // ele serve como um listener para nosso controle
    return AnimatedBuilder(
      animation: AulaController.instance,
      builder: (context, child) {
        // MaterialApp é um dos mais importantes widgets pai.
        // Aqui ele esta como filho do AnimatedBuilder para escutar o listener
        return MaterialApp(
          // theme informa como queremos definir as configs padroes de cores
          theme: ThemeData(
            primarySwatch: Colors.red,
            // usando o sistema de instancia do controller para gerenciarmos
            // o estado global da aplicação presente nos listeners
            brightness: AulaController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          title: 'Curso Flutterando',
          debugShowCheckedModeBanner: false,

          home: const AulaSobreEstado(
            title: 'Flutterando',
          ),
        );
      },
    );
  }
}
