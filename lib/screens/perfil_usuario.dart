import 'package:flutter/material.dart';

class PerfilUsuarioScreen extends StatelessWidget {
  const PerfilUsuarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('username', style: TextStyle(color: Colors.white)),
        actions: const [
          Icon(Icons.add_box_outlined, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          _buildProfileHeader(),
          _buildDashboard(),
          _buildStories(),
          _buildTabs(),
          _buildGridPosts(context), // Passa context para o método
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/images.jpeg'),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStat('∞', 'Posts'),
                _buildStat('∞', 'Followers'),
                _buildStat('∞', 'Following'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDashboard() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Professional dashboard", style: TextStyle(color: Colors.white)),
          Text("2.8K accounts reached in the last 30 days.",
              style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: null,
                  child: Text("Edit profile", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: OutlinedButton(
                  onPressed: null,
                  child: Text("Share profile", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStories() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(radius: 24, backgroundColor: Colors.grey),
          CircleAvatar(radius: 24, backgroundColor: Colors.grey),
          CircleAvatar(radius: 24, backgroundColor: Colors.grey),
          CircleAvatar(radius: 24, backgroundColor: Colors.grey),
          CircleAvatar(radius: 24, backgroundColor: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.grid_on, color: Colors.white),
          Icon(Icons.person_pin_outlined, color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildGridPosts(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(1),
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: List.generate(9, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/photo');
            },
            child: Image.asset(
              'assets/images/TestImage.jpg',
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
    );
  }

  static Widget _buildStat(String count, String label) {
    return Column(
      children: [
        Text(count,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
