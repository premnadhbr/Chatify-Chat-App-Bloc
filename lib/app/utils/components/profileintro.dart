import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileIntroduction extends StatelessWidget {
  final String friendName;
  final String friendImage;

  const ProfileIntroduction({
    required this.friendName,
    required this.friendImage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 238, 233, 233),
                  blurRadius: 80,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.outer,
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.teal.withOpacity(0.5),
                  Colors.purple.withOpacity(0.5),
                ],
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(friendImage),
              ),
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Say hii to  ",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: friendName,
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: Colors.blue.withOpacity(0.4),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Start Chatting to know more about him 😊",
            style: GoogleFonts.poppins(),
          ),
        ],
      ),
    );
  }
}
