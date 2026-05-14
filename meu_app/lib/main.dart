import 'package:flutter/material.dart';

/// IMPORTANDO AS PÁGINAS
import 'pages/home_page.dart';
import 'pages/historia.dart';
import 'pages/localizacao.dart';
import 'pages/biblia.dart';
import 'pages/voluntariado.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Ministério Esperança',

      theme: ThemeData(
        fontFamily: 'Arial',
      ),

      /// PRIMEIRA TELA DO APP
      home: const HomePage(),
    );
  }
}

