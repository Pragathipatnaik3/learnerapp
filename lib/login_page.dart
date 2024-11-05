// login_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // For custom fonts
import 'mainscreen.dart'; // Import the MainScreen

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _navigateToMainScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Mainscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Login",
          style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: GoogleFonts.lato(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0)),
                  icon: Icon(Icons.email),
                  hintText: "Email"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: GoogleFonts.lato(color: Colors.black),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                icon: Icon(Icons.password),
                hintText: "Password",
              ),
              obscureText: true, // Hides password text
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                _navigateToMainScreen(
                    context); // Navigate to MainScreen on login
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(206, 0, 0, 0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 16.0),
              ),
              icon: const Icon(Icons.login),
              label: Text(
                "Login",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Divider(
              color: Colors.black, // Divider color
              thickness: 1.0, // Divider thickness
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Other login options",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    side: BorderSide(color: Colors.black),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  ),
                  icon: Image.asset(
                    'assets/google.png',
                    height: 24,
                    width: 24,
                  ),
                  label: Text(
                    "Google",
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ),
                OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        side: BorderSide(color: Colors.black),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16)),
                    icon: Column(
                      children: [
                        Image.asset(
                          "assets/linkedin.png",
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                    label: Text(
                      "linkedln",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
