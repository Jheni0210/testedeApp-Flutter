import 'package:flutter/material.dart';
import '../componentes/menu_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          "Ministério Esperança",
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

            const SizedBox(height: 25),

            /// LOGOTIPO
            Center(
              child: Image.asset(
                "assets/logo.jpeg",
                width: 180,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 25),

            /// TEXTO
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),

              child: Text(
                "Bem-vindo à nossa igreja",

                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(),
            ),

            const SizedBox(height: 25),

            /// HORÁRIOS
            Container(
              width: double.infinity,

              margin: const EdgeInsets.symmetric(
                horizontal: 25,
              ),

              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Column(
                children: [

                  Text(
                    "Horários dos cultos",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Terça-feira | 19:30h",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Quinta-feira | 19:30h",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Domingo | 10:00h",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),

            /// DEGRADÊ FINAL
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