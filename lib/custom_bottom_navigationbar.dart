import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
            color: Colors.white,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.schedule,
              color: Colors.white,
            ),
            label: 'Schedule'),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.white), label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white), label: "My Profile")
      ],
      currentIndex: 0,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (index) {},
    );
  }
}
