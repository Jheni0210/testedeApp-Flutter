import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TesteFlutter(),
    );
  }
}

class TesteFlutter extends StatefulWidget {
  const TesteFlutter({super.key});

  @override
  State<TesteFlutter> createState() => _TesteFlutterState();
}

class _TesteFlutterState extends State<TesteFlutter> {
  int contador = 0;
  String mensagem = 'Bem-vindo ao Flutter!';

  void incrementar() {
    setState(() {
      contador++;
      mensagem = 'Você clicou $contador vezes!';
    });
  }

  void resetar() {
    setState(() {
      contador = 0;
      mensagem = 'Contador resetado!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teste Flutter'), elevation: 0),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  '🎉 Flutter funcionando!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '$contador',
                        style: const TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        mensagem,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: incrementar,
                      icon: const Icon(Icons.add),
                      label: const Text('Incrementar'),
                    ),
                    const SizedBox(width: 15),
                    OutlinedButton.icon(
                      onPressed: resetar,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Resetar'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '📱 Características do Flutter:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('✨ Hot reload - recarregamento instantâneo'),
                        Text('🎨 Design responsivo e bonito'),
                        Text('⚡ Altíssimo desempenho'),
                        Text('🔄 Sincronização de estado automática'),
                        Text('📦 Componentes reutilizáveis'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
