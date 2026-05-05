import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../componentes/menu_drawer.dart';
import '../services/biblia_services.dart';
import '../modelos/biblia_modelos.dart';

class BibliaPage extends StatefulWidget {
  @override
  _BibliaPageState createState() => _BibliaPageState();
}

class _BibliaPageState extends State<BibliaPage> {
  String busca = "";

  void abrirLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<LivroBiblia> livrosFiltrados = BibliaService.livros
        .where(
          (livro) => livro.nome.toLowerCase().contains(busca.toLowerCase()),
        )
        .toList();

    List<LivroBiblia> antigo = livrosFiltrados
        .where((l) => l.testamento == "Antigo")
        .toList();

    List<LivroBiblia> novo = livrosFiltrados
        .where((l) => l.testamento == "Novo")
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text("Bíblia Sagrada")),
      drawer: MenuDrawer(),
      body: Column(
        children: [
          // 🔍 BUSCA
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Buscar livro...",
                prefixIcon: Icon(Icons.search),
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
                ...antigo.map((livro) => cardLivro(livro)).toList(),

                // ✝️ NOVO TESTAMENTO
                tituloSecao("Novo Testamento"),
                ...novo.map((livro) => cardLivro(livro)).toList(),
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
      padding: EdgeInsets.all(12),
      child: Text(
        titulo,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  // 📦 CARD
  Widget cardLivro(LivroBiblia livro) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: ListTile(
        title: Text(livro.nome),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => abrirLink(livro.link),
      ),
    );
  }
}
