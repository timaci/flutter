import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  List<Map<String, dynamic>> perguntas = [    {      'pergunta': 'Qual é a capital do Brasil?',      'resposta': 'Brasília',    },    {      'pergunta': 'Quantos estados tem o Brasil?',      'resposta': '26',    },    {      'pergunta': 'Qual é o maior país do mundo?',      'resposta': 'Rússia',    }  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo StatefulWidget - Thiago César'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                perguntas[contador]['pergunta'],
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                'Resposta: ${perguntas[contador]['resposta']}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    contador = (contador + 1) % perguntas.length;
                  });
                },
                child: Text('Próxima pergunta'),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}