import 'package:flutter/material.dart';
import 'photo_detail_screen.dart';

class PerfilUsuarioScreen extends StatelessWidget {
  const PerfilUsuarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuário'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          _buildUserHeader(),
          _buildPost(context),
        ],
      ),
    );
  }

  Widget _buildUserHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/images.jpeg'),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('usuario_exemplo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Flutter Dev', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPost(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Legenda da foto de exemplo #flutter'),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PhotoDetailScreen()),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(16),
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage('assets/images/TestImage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 8),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 8),
              Icon(Icons.send),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
