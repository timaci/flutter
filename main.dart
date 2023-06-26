import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Questionario(),
  ));
}

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  List<Map<String, dynamic>> questoesRespostas = [
    {
      'pergunta': 'Qual é a capital do Brasil?',
      'resposta': 'Brasília',
    },
    {
      'pergunta': 'Quem descobriu o Brasil?',
      'resposta': 'Pedro Álvares Cabral',
    },
    // Adicione mais questões e respostas conforme necessário
  ];

  int indiceQuestao = 0;

  void responder(String resposta) {
    setState(() {
      // Você pode adicionar lógica adicional aqui, como verificar se a resposta está correta
      if (indiceQuestao < questoesRespostas.length - 1) {
        indiceQuestao++;
      } else {
        // Todas as questões foram respondidas
        // Você pode adicionar ações adicionais aqui, como exibir uma mensagem de conclusão
        print('Questionário concluído!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário'),
      ),
      body: Column(
        children: [
          Questao(questoesRespostas[indiceQuestao]['pergunta']),
          Resposta(responder),
        ],
      ),
    );
  }
}

class Questao extends StatelessWidget {
  final String pergunta;

  Questao(this.pergunta);

  @override
  Widget build(BuildContext context) {
    return Text(
      pergunta,
      style: TextStyle(fontSize: 16),
    );
  }
}

class Resposta extends StatelessWidget {
  final Function(String) aoResponder;

  Resposta(this.aoResponder);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => aoResponder('Resposta 1'),
          child: Text('Resposta 1'),
        ),
        ElevatedButton(
          onPressed: () => aoResponder('Resposta 2'),
          child: Text('Resposta 2'),
        ),
        ElevatedButton(
          onPressed: () => aoResponder('Resposta 3'),
          child: Text('Resposta 3'),
        ),
      ],
    );
  }
}

