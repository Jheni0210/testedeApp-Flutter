import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../componentes/menu_drawer.dart';

class LocalizacaoPage extends StatelessWidget {
  const LocalizacaoPage({super.key});

  Future<void> abrirMapa() async {
    final Uri url = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=Estrada+do+Tambory,+36+Carapicuiba+SP",
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),

      backgroundColor: const Color(0xFFF5E7CF),

      appBar: AppBar(
        backgroundColor: const Color(0xFFD13CFF),
        elevation: 0,
        centerTitle: true,

        title: const Text(
          "Onde Estamos",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 30),

            /// TÍTULO
            const Text(
              "VENHA NOS VISITAR",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            /// CARD MAPA
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),

              child: Column(
                children: [

                  /// IMAGEM MAPA
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),

                    child: Image.asset(
                      "assets/mapa.png",
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// BOTÃO GOOGLE MAPS
                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: abrirMapa,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,

                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                        ),

                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(25),
                          ),
                        ),
                      ),

                      child: const Text(
                        "Ver no Google Maps",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// ENDEREÇO
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),

              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(
                color: const Color(0xFFD9C2FF),
                borderRadius: BorderRadius.circular(25),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    "Igreja Ministério Esperança",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Estrada do Tambory, 36 - Vila Merces\nCarapicuíba - São Paulo",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            ///LOGOTIPO
            Center(
              child: Image.asset(
                "assets/logo.jpeg",
                width: 180,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 50),

            /// GRADIENTE FINAL
            Container(
              height: 120,

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x00FFFFFF),
                    Color(0xFFD13CFF),
                  ],

                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}