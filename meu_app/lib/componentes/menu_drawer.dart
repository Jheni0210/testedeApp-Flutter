import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/historia.dart';
import '../pages/localizacao.dart';
import '../pages/biblia.dart';
import '../pages/voluntariado.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(

        padding: EdgeInsets.zero,

        children: [

          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFFD13CFF),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Icon(
                  Icons.church,
                  size: 50,
                  color: Colors.white,
                ),

                SizedBox(height: 10),

                Text(
                  'Ministério Esperança',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          /// HOME
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Início'),

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),

          /// HISTORIA
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: const Text('Nossa História'),

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HistoriaPage(),
                ),
              );
          },
          ),

          /// LOCALIZAÇÃO
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Onde Estamos'),

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LocalizacaoPage(),
                ),
              );
            },
          ),

          /// BIBLIA
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Bíblia'),

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BibliaPage(),
                ),
              );
            },
          ),

          /// VOLUNTARIADO
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Voluntariado'),

            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VoluntariadoPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

