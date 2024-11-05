import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnerapp/login_page.dart'; // Import the MainScreen directly

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Learner App",
          style: GoogleFonts.lato(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
