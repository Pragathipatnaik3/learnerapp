import 'package:flutter/material.dart';
import 'package:learnerapp/custom_bottom_navigationbar.dart'; // Make sure this path is correct
import 'package:learnerapp/custom_appbar.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(), // Using your custom AppBar
      body: Center(
        child: Text(
          "Content goes here",
          style: TextStyle(color: Colors.white), // Content text style
        ),
      ),
      bottomNavigationBar:
          const CustomBottomNavigationBar(), // Use your custom BottomNavigationBar
    );
  }
}
