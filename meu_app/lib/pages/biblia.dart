import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../componentes/menu_drawer.dart';
import '../services/biblia_services.dart';
import '../modelos/biblia_modelos.dart';

class BibliaPage extends StatefulWidget {
  const BibliaPage({super.key});

  @override
  State<BibliaPage> createState() => _BibliaPageState();
}

class _BibliaPageState extends State<BibliaPage> {
  String busca = "";

  // ✅ FUNÇÃO CORRIGIDA (funciona no Android e Web)
  Future<void> abrirLink(String url) async {
    final Uri uri = Uri.parse(url);

    try {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint("Erro ao abrir link: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    List<LivroBiblia> livrosFiltrados = BibliaService.livros
        .where(
          (livro) =>
          livro.nome.toLowerCase().contains(busca.toLowerCase()),
    )
        .toList();

    List<LivroBiblia> antigo = livrosFiltrados
        .where((l) => l.testamento == "Antigo")
        .toList();

    List<LivroBiblia> novo = livrosFiltrados
        .where((l) => l.testamento == "Novo")
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bíblia Sagrada"),
      ),
      drawer: const MenuDrawer(),

      body: Column(
        children: [
          // 🔍 BUSCA
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar livro...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  busca = value;
                });
              },
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                // 📜 ANTIGO TESTAMENTO
                tituloSecao("Antigo Testamento"),
                ...antigo.map((livro) => cardLivro(livro)),

                // ✝️ NOVO TESTAMENTO
                tituloSecao("Novo Testamento"),
                ...novo.map((livro) => cardLivro(livro)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 📌 TÍTULO
  Widget tituloSecao(String titulo) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        titulo,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // 📦 CARD
  Widget cardLivro(LivroBiblia livro) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
          )
        ],
      ),
      child: ListTile(
        title: Text(livro.nome),
        trailing: const Icon(Icons.arrow_forward_ios),

        // ✅ CORRIGIDO PARA MOBILE
        onTap: () {
          abrirLink(livro.link);
        },
      ),
    );
  }
}