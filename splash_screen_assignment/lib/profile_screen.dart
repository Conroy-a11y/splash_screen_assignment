import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget foodCard(String imageUrl, String title) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(blurRadius: 5, color: Colors.black12)],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/my_pic.jpg'),
              ),

              const SizedBox(height: 15),

              const Text(
                'Conroy Makhubu',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                'Passionate food lover and Flutter developer. '
                'I enjoy discovering delicious meals and building amazing mobile applications.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.favorite, color: Colors.red, size: 35),
                      SizedBox(height: 5),
                      Text('Likes'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.restaurant, color: Colors.orange, size: 35),
                      SizedBox(height: 5),
                      Text('Food'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 35),
                      SizedBox(height: 5),
                      Text('Reviews'),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favorite Foods',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    foodCard(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38',
                      'Pizza',
                    ),
                    foodCard(
                      'https://images.unsplash.com/photo-1550547660-d9450f859349',
                      'Burger',
                    ),
                    foodCard(
                      'https://images.unsplash.com/photo-1579871494447-9811cf80d66c',
                      'Cake',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
