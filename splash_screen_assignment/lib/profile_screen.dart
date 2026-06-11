import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget recipeCard({
    required String title,
    required String chef,
    required String image,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.7), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 5),
            Text(chef, style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.access_time, color: Colors.white, size: 18),
                SizedBox(width: 5),
                Text("20 min", style: TextStyle(color: Colors.white)),
                Spacer(),
                Icon(Icons.bookmark_border, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Profile Section
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/my_pic.jpg"),
                    ),

                    const SizedBox(width: 20),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Column(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Recipe"),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "2.5M",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Followers"),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "259",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Following"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  "Conroy Makhubu",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 5),

                Text(
                  "Chef",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),

                SizedBox(height: 15),

                Text("Private Chef", style: TextStyle(fontSize: 16)),

                SizedBox(height: 5),

                Text(
                  "Passionate about food and life 🍔🍕🍜",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),

                SizedBox(height: 5),

                Text(
                  "Besides a Dart and Flutter Developer.",
                  style: TextStyle(
                    color: Color(0xff1B9C77),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 25),

                // Tabs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xff1B9C77),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "Recipe",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Videos",
                      style: TextStyle(
                        color: Color(0xff1B9C77),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Tag",
                      style: TextStyle(
                        color: Color(0xff1B9C77),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Recipe Cards
                recipeCard(
                  title: "Traditional spare ribs baked",
                  chef: "By Chef John",
                  image: "assets/images/ribs.png",
                ),

                recipeCard(
                  title: "Spice roasted chicken with flavored rice",
                  chef: "By Mark Kelvin",
                  image: "assets/images/chicken.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
