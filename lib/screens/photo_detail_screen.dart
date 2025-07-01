import 'package:flutter/material.dart';

class PhotoDetailScreen extends StatelessWidget {
  const PhotoDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Publicação',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Foto
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/TestImage.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/images.jpeg'),
                ),
                SizedBox(width: 12),
                Text(
                  '@usuario_exemplo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Essa é uma legenda de demonstração de uma foto no estilo Instagram. Curta e compartilhe!',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                Icon(Icons.favorite_border, size: 28),
                SizedBox(width: 24),
                Icon(Icons.chat_bubble_outline, size: 28),
                SizedBox(width: 24),
                Icon(Icons.send, size: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
