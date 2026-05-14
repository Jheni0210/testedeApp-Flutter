import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../componentes/menu_drawer.dart';

class LocalizacaoPage extends StatelessWidget {
  const LocalizacaoPage({super.key});

  Future<void> abrirMapa() async {

    final Uri url = Uri.parse(
      "https://www.google.com/maps",
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
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
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 30),

            const Text(
              "VENHA NOS VISITAR",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            /// MAPA
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),

              child: Column(
                children: [

                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),

                    child: Image.asset(
                      "assets/mapa.png",
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(
                      onPressed: abrirMapa,

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        padding: const EdgeInsets.all(18),
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

            /// LOGO
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/logo.png",
                width: 180,
              ),
            ),

            const SizedBox(height: 50),

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
            )
          ],
        ),
      ),
    );
  }
}

