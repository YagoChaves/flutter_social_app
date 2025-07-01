import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/perfil_usuario.dart';
import 'screens/photo_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CloneGran',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/perfil': (context) => const PerfilUsuarioScreen(),
        '/photo': (context) => const PhotoDetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
