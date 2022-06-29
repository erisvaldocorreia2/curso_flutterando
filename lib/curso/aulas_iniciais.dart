import 'package:flutter/material.dart';
import 'package:curso_flutterando/curso/aula_sobre_estado.dart';

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
      // Ao usarmos o Scaffold garantimos acesso a um esqueleto de app completo
      // Ele nos fornece diversas propriedades que facilitam o processo de
      // de criarmos o aplicativo de forma rapida e elegante.
      home: Scaffold(
        // appbar nos fornece a criação da appbar de forma rapida
        // devemos notar que a estrutura de cores do app estara seguindo
        // o tom da paleta definida no tema da aplicação
        appBar: AppBar(
          title: const Text('Curso Fluterando'),
        ),

        // body permite construirmos as coisas no corpo do app
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                // usando o parametro recebido na classe no momento de instancia
                title,
                style: const TextStyle(color: Colors.red, fontSize: 25),
              ),

              // Instanciando a Classe com estado e passando o parametro
              const AulaSobreEstado()
            ],
          ),
        ),
      ),
    );
  }
}
