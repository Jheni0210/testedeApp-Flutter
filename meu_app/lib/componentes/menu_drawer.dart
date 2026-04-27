import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/historia.dart';
import '../pages/biblia.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text("Ministério Esperança")),
          ListTile(
            title: Text("Início"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text("Nossa História"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HistoriaPage()),
              );
            },
          ),
          ListTile(
            title: Text("Bíblia"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => BibliaPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
