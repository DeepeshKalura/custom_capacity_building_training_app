import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Catelog'),
          const Text('Most Popular Certifications'),
          Container(
            height: 200,
            constraints: const BoxConstraints(
              maxWidth: 200 * 9,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 200,
                  color: Colors.green,
                ),
                Container(
                  width: 200,
                  color: Colors.yellow,
                ),
                Container(
                  width: 200,
                  color: Colors.orange,
                ),
                Container(
                  width: 200,
                  color: Colors.purple,
                ),
                Container(
                  width: 200,
                  color: Colors.pink,
                ),
                Container(
                  width: 200,
                  color: Colors.teal,
                ),
                Container(
                  width: 200,
                  color: Colors.brown,
                ),
              ],
            ),
          ),
          // ! Will implement this later
        ],
      ),
      // ! Pretty Messy Bottom Navigation Bar here
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
