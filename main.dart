import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _backgroundColor = Colors.white; // Cor inicial de fundo

  void _changeToBlue() {
    setState(() {
      // Altera a cor de fundo para azul
      _backgroundColor = Colors.lightBlue;
    });
  }

  void _changeToGreen() {
    setState(() {
      // Altera a cor de fundo para verde
      _backgroundColor = Colors.lightGreen;
    });
  }

void _changeToBlack() {
    setState(() {
      // Altera a cor de fundo para verde
      _backgroundColor = Colors.black;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Botões de Mudança de Cor'),
        ),
        body: Container(
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _changeToBlue,
                  child: Text('TELA AZUL'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _changeToGreen,
                  child: Text('TELA VERDE'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _changeToBlack,
                  child: Text('TELA PRETA'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
