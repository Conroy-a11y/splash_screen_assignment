import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Profile Photo
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/chef.png',
              ), // placeholder image
            ),
            const SizedBox(height: 15),
            // Name
            const Text(
              "Afuwape Abiodun",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            // Bio
            const Text(
              "Chef\nPrivate Chef\nPassionate about food and life 🍲🍗🍱",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _StatCard(label: "Recipe", value: "4"),
                _StatCard(label: "Followers", value: "2.5M"),
                _StatCard(label: "Following", value: "259"),
              ],
            ),
            const SizedBox(height: 20),

            // Tabs (mock UI)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Recipe",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Videos", style: TextStyle(color: Colors.grey)),
                Text("Tag", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 20),

            // Recipe Cards
            _RecipeCard(
              title: "Traditional spare ribs baked",
              author: "Chef John",
              rating: 4.0,
              time: "20 min",
              image: 'assets/ribs.png',
            ),
            _RecipeCard(
              title: "Spice roasted chicken with flavored rice",
              author: "Mark Kelvin",
              rating: 4.0,
              time: "20 min",
              image: 'assets/chicken.png',
            ),
          ],
        ),
      ),
    );
  }
}

// Stats Widget
class _StatCard extends StatelessWidget {
  final String label;
  final String value;

  const _StatCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

// Recipe Card Widget
class _RecipeCard extends StatelessWidget {
  final String title;
  final String author;
  final double rating;
  final String time;
  final String image;

  const _RecipeCard({
    required this.title,
    required this.author,
    required this.rating,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.asset(image, width: 100, height: 100, fit: BoxFit.cover),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("by $author"),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    Text("$rating"),
                    const SizedBox(width: 10),
                    const Icon(Icons.timer, size: 16),
                    Text(time),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
