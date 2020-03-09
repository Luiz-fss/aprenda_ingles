import 'package:flutter/material.dart';

import 'Home.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primaryColor: Color(0xff795548),

      //Acentua as cores de alguns componentes
      //accentColor: Colors.green
      //fundo do scaffold
      scaffoldBackgroundColor: Color(0xfff5e9b9),

    ),
  ));
}