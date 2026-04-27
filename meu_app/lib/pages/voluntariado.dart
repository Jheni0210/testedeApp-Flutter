import 'package:flutter/material.dart';
import '../componentes/menu_drawer.dart';

class VoluntariadoPage extends StatelessWidget {
  const VoluntariadoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ministério Esperança")),
      drawer: MenuDrawer(),
      body: Center(child: Text("Conteúdo aqui")),
    );
  }
}
