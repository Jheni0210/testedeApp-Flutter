import 'package:flutter/material.dart';
import '../componentes/menu_drawer.dart';

class VoluntariadoPage extends StatelessWidget {
  const VoluntariadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),

      backgroundColor: const Color(0xFFF4E7D0),

      appBar: AppBar(
        backgroundColor: const Color(0xFFB93CF6),
        elevation: 0,
        centerTitle: true,

        title: const Text(
          "Voluntariado",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: .2,
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            /// TÍTULO
            const Center(
              child: Text(
                'Ações beneficentes',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 12),

            /// TEXTO
            Text(
              'Estamos em missão para levar alimento e amor a quem mais precisa. '
                  'Saímos para distribuir marmitas e compartilhar esperança com nossos irmãos em situação de rua.',

              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 1.4,
                fontSize: 15,
                color: const Color(0xFF666666),
              ),

              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            const Divider(),

            const SizedBox(height: 18),

            /// EVENTOS
            const Text(
              'Próximos eventos beneficentes:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 14),

            _EventCard(
              title: 'Distribuição de alimentos',
              subtitle: 'Adicionar à agenda • Data: 04/05',
              accent: const Color(0xFFFFE1EB),
            ),

            const SizedBox(height: 12),

            _EventCard(
              title: 'Doação de agasalhos',
              subtitle: 'Adicionar à agenda • Data: 11/05',
              accent: const Color(0xFFFFE1EB),
            ),

            const SizedBox(height: 28),

            const Divider(),

            const SizedBox(height: 18),

            /// FORMULÁRIO
            const Row(
              children: [

                Icon(
                  Icons.description_outlined,
                  size: 24,
                ),

                SizedBox(width: 8),

                Text(
                  'Formulário de inscrição',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),

                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 4),
                    color: Color(0x22000000),
                  ),
                ],
              ),

              child: const _SignupForm(),
            ),

            const SizedBox(height: 30),

            /// DEGRADÊ FINAL
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),

              child: Container(
                height: 120,

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00B93CF6),
                      Color(0xFFB93CF6),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color accent;

  const _EventCard({
    required this.title,
    required this.subtitle,
    required this.accent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Icon(
            Icons.add_circle_outline,
            size: 22,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SignupForm extends StatefulWidget {
  const _SignupForm();

  @override
  State<_SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<_SignupForm> {
  final _formKey = GlobalKey<FormState>();

  final _nome = TextEditingController();
  final _whats = TextEditingController();
  final _email = TextEditingController();
  final _disp = TextEditingController();

  @override
  void dispose() {
    _nome.dispose();
    _whats.dispose();
    _email.dispose();
    _disp.dispose();
    super.dispose();
  }

  InputDecoration _dec(String label) {
    return InputDecoration(
      labelText: label,

      filled: true,
      fillColor: Colors.white,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),

        borderSide: const BorderSide(
          color: Color(0x33000000),
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),

        borderSide: const BorderSide(
          color: Color(0xFFB93CF6),
          width: 1.5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      child: Column(
        children: [

          TextFormField(
            controller: _nome,
            decoration: _dec('Nome'),

            validator: (v) {
              if (v == null || v.trim().isEmpty) {
                return 'Informe seu nome';
              }
              return null;
            },
          ),

          const SizedBox(height: 12),

          TextFormField(
            controller: _whats,
            decoration: _dec('WhatsApp'),
            keyboardType: TextInputType.phone,
          ),

          const SizedBox(height: 12),

          TextFormField(
            controller: _email,
            decoration: _dec('Email'),
            keyboardType: TextInputType.emailAddress,
          ),

          const SizedBox(height: 12),

          TextFormField(
            controller: _disp,
            decoration: _dec('Disponibilidade'),
            maxLines: 3,
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Inscrição enviada!'),
                    ),
                  );
                }
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF111111),
                foregroundColor: Colors.white,

                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),

              child: const Text(
                'Inscreva-se',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
