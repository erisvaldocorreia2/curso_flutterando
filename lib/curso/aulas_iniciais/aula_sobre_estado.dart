import 'package:flutter/material.dart';

import 'aula_controller.dart';
import 'widget_reaproveitado.dart';

class AulaSobreEstado extends StatefulWidget {
  // Caso um parametro não tenha um valor default, ele se torna obrigatorio
  // Parametros obrigatórios necessitam da chave 'required'
  const AulaSobreEstado({Key? key, required this.title}) : super(key: key);
  // Parametro criado para receber um valor na tela
  // Todo parametro precisa ser incluido no construtor.
  final String title;

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
    // Ao usarmos o Scaffold garantimos acesso a um esqueleto de app completo
    // Ele nos fornece diversas propriedades que facilitam o processo de
    // de criarmos o aplicativo de forma rapida e elegante.
    return Scaffold(
      // appbar nos fornece a criação da appbar de forma rapida
      // devemos notar que a estrutura de cores do app estara seguindo
      // o tom da paleta definida no tema da aplicação
      appBar: AppBar(
        title: const Text('Curso Fluterando'),
      ),
      body: Center(
        // Column permite que eu adicione diversos widgets um seguida do outro
        // de forma vertical na renderização do app.
        // importante lembrar que a ordem disposta interfere na renderização
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // usando o parametro recebido na classe no momento de instancia
              // como ele foi instanciado na classe, usamos widget para
              // referenciar dentro do estado.
              // em classes sem estados podemos usar apenas o nome da variavel
              widget.title,
              style: const TextStyle(color: Colors.red, fontSize: 25),
            ),
            // GestureDetector pode ser usado para capturar toques na tela.
            GestureDetector(
              // usamos o simbolo do $ para concatenar variaveis no texto
              child: Text(
                'contador: $_count',
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onTap: () {
                // usamos o setState para notificarmos o build de que houve uma
                // alteração no estado e precisamos que a tela seja modificada
                setState(() {
                  // usamos a função ou ação que desejamos aplicar dentro do setState
                  // para que o build entenda a necessidade de atualizar a tela.
                  _count++;
                });
              },
            ),
            // SizedBox é um widget muito usado para criarmos espaços
            const SizedBox(
              height: 50,
            ),
            // A Row é usada para criarmos uma sequencia de widgets em linha
            // assim como a column, ela recebe um array de filhos e a ordem
            // gerencia a posição que cada widget é renderizado.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                // Pensando no reaproveitamento de código podemos
                // criar widgets personalizados que recebem parametros
                // e podem ser componentizados de forma a ficar mais organizado
                // o nosso código
                WidgetReaproveitado(cor: Colors.red, texto: 'olá 1'),
                WidgetReaproveitado(cor: Colors.black, texto: 'olá 2'),
                WidgetReaproveitado(cor: Colors.green, texto: 'olá 3'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          // conforme o nosso controle possui um listener,
          // não precisamos do uso do setState, pois o notifyListener avisa
          // sobre as atualizações realizadas ao builder
          AulaController.instance.changeTheme();
        },
      ),
    );
  }
}
