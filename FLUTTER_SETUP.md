# 🚀 Guia Flutter - Teste Criado

## ✅ Status
Flutter está **instalado e funcionando** na sua máquina!

## 📂 Projeto Criado
- **Nome**: `meu_app`
- **Localização**: `/workspaces/teste/meu_app`
- **Arquivo principal**: `lib/main.dart`

## 🎯 O que foi criado:

Um aplicativo Flutter simples com:
- ✨ Contador interativo
- 🎨 Interface bonita e responsiva
- 💾 Estado de aplicação usando `StatefulWidget`
- 📦 Componentes Flutter demonstrativos (buttons, cards, containers, etc)

## 🏃 Como Executar:

### Opção 1: Rodar no Navegador Web (Recomendado)
```bash
export PATH="/tmp/flutter/bin:$PATH"
cd /workspaces/teste/meu_app
flutter run -d web-server
```

Depois abra em seu navegador: `http://localhost:8080`

### Opção 2: Rodar em desenvolvimento automático
```bash
export PATH="/tmp/flutter/bin:$PATH"
cd /workspaces/teste/meu_app
flutter run -d web
```

## 📝 Conceitos Flutter Demonstrados:

### 1. **StatefulWidget & setState()**
```dart
class MyWidget extends StatefulWidget {
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int contador = 0;
  
  void incrementar() {
    setState(() {
      contador++;  // Atualiza UI automaticamente
    });
  }
}
```

### 2. **Widgets Básicos**
- `Scaffold`: Estrutura básica da tela
- `AppBar`: Barra no topo
- `Column`: Organiza widgets verticalmente
- `Row`: Organiza widgets horizontalmente
- `Container`: Caixa com estilo
- `Button`: Botões interativos
- `Text`: Texto com estilos

### 3. **Responsividade**
- `SingleChildScrollView`: Rolagem automática
- `Center`: Centraliza conteúdo
- `Padding`: Espaçamento

## 🔥 Hot Reload
Uma das melhores features do Flutter é o **hot reload** - você pode editar o código e ver as mudanças **instantaneamente** sem reiniciar o app!

Pressione `r` no terminal para fazer hot reload.

## 📚 Próximos Passos:

1. **Edite `lib/main.dart`** e experimente mudar cores, textos ou adicionar botões
2. **Usar hot reload** (`r` no terminal) para ver mudanças em tempo real
3. **Instale extensões** no VS Code para melhor experiência com Flutter
4. **Explore widgets** em: https://flutter.dev/docs/development/ui/widgets

## 💡 Dicas:

- Flutter usa a linguagem **Dart**
- Tudo em Flutter é um **Widget**
- Use `const` para otimizar performance
- `setState()` é chamado para atualizar a UI
- Material Design é incluído por padrão (UI bonita pronta para usar)

## ⚠️ Nota sobre Plataformas:

Neste ambiente temos suporte para:
- ✅ **Web** (navegador) - funcionando perfeitamente
- ❌ Android/iOS - requer Android Studio/Xcode (não instalado)
- ❌ Desktop Linux - requer dependências adicionais

Para desenvolvimento profissional, você pode instalar localmente e desenvolver para dispositivos reais.

---

**Pronto para começar!** 🎉 Experimente modificar o código e veja a magia do hot reload!
