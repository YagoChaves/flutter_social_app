# 📱 InstaClone - Rede Social com Flutter

Um clone simplificado do Instagram, criado em Flutter, com foco em layout moderno, navegação funcional e experiência de usuário.

## 🎯 Funcionalidades

- Tela de Login com autenticação simulada
- Tela de Perfil de Usuário com avatar, descrição e postagens
- Visualização detalhada da foto com legenda e ações

---

## 📸 Capturas de Tela

### 🔐 Login

![Login](assets/images/screenshot_login.png)

### 👤 Perfil de Usuário

![Perfil](assets/images/screenshot_perfil.png)

### 🖼️ Detalhe da Postagem

![Postagem](assets/images/screenshot_detalhe.png)

---

## 🚀 Tecnologias Utilizadas

- [Flutter 3.8.1](https://flutter.dev)
- Material Design
- Navegação com rotas nomeadas
- Imagens locais via `assets/`

---

## 📁 Estrutura do Projeto

```bash
flutter_application_1/
├── assets/
│   └── images/
│       ├── images.jpeg           # Foto de perfil
│       └── TestImage.jpg         # Foto postada
├── lib/
│   ├── screens/
│   │   ├── login_screen.dart
│   │   ├── perfil_usuario.dart
│   │   └── photo_detail_screen.dart
│   └── main.dart
├── pubspec.yaml
└── README.md
