import 'package:curso_flutterando/curso/aula_formularios/myToast.dart';
import 'package:flutter/material.dart';

// Tela simples criada para estudo do processo de navegação
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // aplicamos uma appbar vazia para exemplificar que ao usarmos o método
      // push do navigator, a appbar ganha automanticamente um botao de voltar
      // promovendo assim uma navegação entre as pilhas da rota anterior.

      // num login efetivo, poderiamos usar o metodo pushReplacement que ao navegar
      // removeria a rota anterior da pilha, evitando a navegacao com rota de login
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Receber Mensagem!'),
          onPressed: () {
            toast(context, 'Boas vindas a home page!');
          },
        ),
      ),
    );
  }
}
