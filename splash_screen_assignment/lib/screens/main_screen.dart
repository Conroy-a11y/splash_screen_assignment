import 'package:flutter/material.dart';
import '../profile_screen.dart';

class MainScreen extends StatefulWidget {
  final String userName;
  final String userEmail;

  const MainScreen({
    super.key,
    required this.userName,
    required this.userEmail,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildHomeTab() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back,',
            style: TextStyle(color: Colors.grey.shade700, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            widget.userEmail,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xff00B5DD),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Text(
              'Your personalized dashboard is ready. Explore the best recipes, save favorites, and enjoy your food journey.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholderTab({required IconData icon, required String title}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: const Color(0xff00B5DD)),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      _buildHomeTab(),
      _buildPlaceholderTab(
        icon: Icons.shopping_cart_outlined,
        title: 'Your Cart',
      ),
      ProfileScreen(name: widget.userName, email: widget.userEmail),
      _buildPlaceholderTab(
        icon: Icons.notifications_outlined,
        title: 'Notifications',
      ),
      _buildPlaceholderTab(icon: Icons.settings_outlined, title: 'Settings'),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff00B5DD),
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
