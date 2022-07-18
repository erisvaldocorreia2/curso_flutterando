import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Vamos usar esse controle de variavel apenas para iniciar os estudos
  // Normalmente usamos o controller dos campos de texto para realizarmos tal acao.
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // SingleChildScrollView habilita um scroll na tela, permitindo que
          // tenhamos elementos que ultrapassem o tamanho total da tela
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TextField é um widget que podemos usar para coletar textos
                  // fornecidos pelo usuário
                  TextField(
                    // com o onChanged escutamos toda alteração preenchida
                    onChanged: (value) {
                      email = value;
                    },
                    // keyboardtype permite definirmos o tipo de teclado que
                    // teremos no campo em especifico
                    keyboardType: TextInputType.emailAddress,
                    // declaramos o decoration para assim podermos manipular
                    // a visão de como será nosso campo
                    decoration: const InputDecoration(
                      label: Text('E-mail'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text('Senha'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {
                        // vamos realizar uma simples validacao para teste
                        // de nossos campos preenchidos como exemplo
                        if (email == 'email' && password == '123') {
                          // ignore: avoid_print
                          print('Login Correto');
                        } else {
                          // ignore: avoid_print
                          print('Login Invalido');
                        }
                      },
                      child: const Text('Login')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
