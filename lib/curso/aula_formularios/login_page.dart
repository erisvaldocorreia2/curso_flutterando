import 'package:curso_flutterando/curso/aula_formularios/home_page.dart';
import 'package:flutter/material.dart';

// Spearando a classe do MaterailApp da classe de tela
// usando principios de divisão de responsabilidade
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MyPage());
  }
}

// Classe com estado voltada unicamente para o conteudo da tela de login
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // Vamos usar esse controle de variavel apenas para iniciar os estudos
  // Normalmente usamos o controller dos campos de texto para realizarmos tal acao.
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                        // Navigator permite gerarmos um controle de roteamento
                        // assim conseguimos trazer uma nova classe provendo
                        // navegacao entre telas.
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
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
    );
  }
}
