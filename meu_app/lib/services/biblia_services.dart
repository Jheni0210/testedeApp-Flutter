import 'package:meu_app/modelos/biblia_modelos.dart';

import '../modelos/biblia_modelos.dart';

class BibliaService {
  static var livros = <LivroBiblia>[
    // 📜 Antigo Testamento
    LivroBiblia(
      nome: "Gênesis",
      link: "https://www.bibliaonline.com.br/acf/gen",
      testamento: "Antigo",
    ),
    LivroBiblia(
      nome: "Êxodo",
      link: "https://www.bibliaonline.com.br/acf/ex",
      testamento: "Antigo",
    ),
    LivroBiblia(
      nome: "Levítico",
      link: "https://www.bibliaonline.com.br/acf/lv",
      testamento: "Antigo",
    ),
    LivroBiblia(
      nome: "Números",
      link: "https://www.bibliaonline.com.br/acf/nm",
      testamento: "Antigo",
    ),
    LivroBiblia(
      nome: "Deuteronômio",
      link: "https://www.bibliaonline.com.br/acf/dt",
      testamento: "Antigo",
    ),

    // ✝️ Novo Testamento
    LivroBiblia(
      nome: "Mateus",
      link: "https://www.bibliaonline.com.br/acf/mt",
      testamento: "Novo",
    ),
    LivroBiblia(
      nome: "Marcos",
      link: "https://www.bibliaonline.com.br/acf/mc",
      testamento: "Novo",
    ),
    LivroBiblia(
      nome: "Lucas",
      link: "https://www.bibliaonline.com.br/acf/lc",
      testamento: "Novo",
    ),
    LivroBiblia(
      nome: "João",
      link: "https://www.bibliaonline.com.br/acf/jo",
      testamento: "Novo",
    ),
  ];
}
