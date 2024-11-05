import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        "Welcome learner",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
