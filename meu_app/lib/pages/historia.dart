import 'package:flutter/material.dart';
import '../componentes/menu_drawer.dart';

class HistoriaPage extends StatelessWidget {
  const HistoriaPage({super.key});

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
          "Sobre nós",
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

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFFEEDFFF),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// IMAGEM
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/logo.png",
                        height: 250,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Igreja Evangélica Ministério Esperança",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Nossa fundação",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "A igreja foi fundada em 2010 com o objetivo de levar esperança e fortalecer vidas através da palavra de Deus.\n\nNossa missão é acolher pessoas, promover fé, amor ao próximo e restaurar famílias por meio da presença de Deus.",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.7,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
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
