import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Fichas de Alunos'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ficha(
                imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXy_4kYb0HI81rZDmvQurs973x8KaqZGF_A8_yvN7_aJ6Ub0CgpOppbIAiMycurDIBOdE&usqp=CAU',
                nome: 'João Silva',
                matricula: generateRandomNumber(),
                escola: 'Henrique Galvão',
                anoPeriodo: '2023/1',
              ),
              SizedBox(height: 20),
              Ficha(
                imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtrQQNBKND587Lcbf3P3YtBI2a3ksT_w5Mig&usqp=CAU',
                nome: 'Maria Santos',
                matricula: generateRandomNumber(),
                escola: 'CEFET-MG',
                anoPeriodo: '2023/1',
              ),
              SizedBox(height: 20),
              Ficha(
                imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY01fYb18Wg1pj4FgDMtEDSDPtrvWXL0aoGh35yBNyT7aN1tgd1WLtt_0Kb45TxmNVE8s&usqp=CAU',
                nome: 'Pedro Oliveira',
                matricula: generateRandomNumber(),
                escola: 'Martin Cyprien',
                anoPeriodo: '2023/2',
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

class Ficha extends StatelessWidget {
  final String imagem;
  final String nome;
  final int matricula;
  final String escola;
  final String anoPeriodo;

  const Ficha({
    required this.imagem,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.anoPeriodo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              child: Image.network(
                imagem,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nome: $nome',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('Matrícula: $matricula'),
            SizedBox(height: 5),
            Text('Escola: $escola'),
            SizedBox(height: 5),
            Text('Ano/Período: $anoPeriodo'),
          ],
        ),
      ),
    );
  }
}

int generateRandomNumber() {
  Random random = Random();
  return random.nextInt(100000);
}
