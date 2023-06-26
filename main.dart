import 'package:flutter/material.dart';

void main() {
  runApp(QuestionarioApp());
}

class QuestionarioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questionário',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Questionario(),
    );
  }
}

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  List<String> respostas = [];
  int perguntaAtual = 0;

  List<Map<String, dynamic>> perguntas = [
    {
      'pergunta': 'Qual é a capital do Brasil?',
      'respostas': ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador'],
      'respostaCorreta': 'Brasília',
    },
    {
      'pergunta': 'Quem descobriu o Brasil?',
      'respostas': ['Pedro Álvares Cabral', 'Cristóvão Colombo', 'Américo Vespúcio', 'Fernão de Magalhães'],
      'respostaCorreta': 'Pedro Álvares Cabral',
    },
    {
      'pergunta': 'Qual é a cor do céu?',
      'respostas': ['Vermelho', 'Azul', 'Verde', 'Amarelo'],
      'respostaCorreta': 'Azul',
    },
  ];

  void responder(String resposta) {
    setState(() {
      respostas.add(resposta);
      perguntaAtual++;
    });

    if (perguntaAtual >= perguntas.length) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Resultado(respostas),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário'),
      ),
      body: perguntaAtual < perguntas.length
          ? Column(
              children: [
                Text(
                  perguntas[perguntaAtual]['pergunta'] as String,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                ...((perguntas[perguntaAtual]['respostas'] as List<dynamic>).map((resposta) {
                  return ElevatedButton(
                    onPressed: () => responder(resposta as String),
                    child: Text(resposta as String),
                  );
                }).toList()),
              ],
            )
          : Center(
              child: Text(
                'Questionário terminado!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}

class Resultado extends StatelessWidget {
  final List<String> respostas;

  Resultado(this.respostas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado do Questionário'),
      ),
      body: ListView.builder(
        itemCount: respostas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Resposta ${index + 1}: ${respostas[index]}'),
          );
        },
      ),
    );
  }
}

