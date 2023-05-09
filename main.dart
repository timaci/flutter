import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(text: 'Press me'));
}

class MyApp extends StatelessWidget {
  final String text;

  const MyApp({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      
      child: TextButton(
        onPressed: () {},
        child: Text('botão'),
         style: TextButton.styleFrom(
           minimumSize: Size(50, 30),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Define o raio do botão
    ),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  ),
  
      ),
    );
  }
}

