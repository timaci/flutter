import 'package:flutter/material.dart';

main(){
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatelessWidget{

  void enviar(){
    print("Enviar");}
      void cancelar(){
    print("Cancelar");}
      void salvar(){
    print("Salvar");}
  

Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("treinando programação"),

        ),
        body:Column (children: [
           Text("Aprendendo"),
           Text("Programação"),
           Text("Flutter"),
        
        Column (children: [
          ElevatedButton(onPressed: enviar, child: Text("Enviar")),
          ElevatedButton(onPressed: cancelar, child: Text("Cancelar")),
          ElevatedButton(onPressed: salvar, child: Text("Salvar")),
        ],)
          ],
        ),
       ), 
      );
  }
}