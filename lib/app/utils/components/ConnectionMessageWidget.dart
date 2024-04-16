import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectionMessageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            "Stay Connected with your friends 👋",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
          child: Text(
            "Start your journey of connection. Build friendships,       share moments Stay connected with your friends. 🌟",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
