import 'package:chat_app/app/utils/animation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class MessageAppbar extends StatelessWidget {
  const MessageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxHeight < 720) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 1,
                )
              ],
              border: Border.all(color: AppColors.primaryColor),
              color: AppColors.primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.menu5,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Messages",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.notification,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 1,
                )
              ],
              border: Border.all(color: AppColors.primaryColor),
              color: AppColors.primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.menu5,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.notification,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 0, bottom: 10),
                  child: Text(
                    "Messages",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
