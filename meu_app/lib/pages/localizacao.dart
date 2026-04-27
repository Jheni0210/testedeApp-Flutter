import 'package:flutter/material.dart';
import '../componentes/menu_drawer.dart';

class LocalizacaoPage extends StatelessWidget {
  const LocalizacaoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ministério Esperança")),
      drawer: MenuDrawer(),
      body: Center(child: Text("Conteúdo aqui")),
    );
  }
}
