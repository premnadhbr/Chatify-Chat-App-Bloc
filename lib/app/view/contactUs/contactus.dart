import 'package:chat_app/app/utils/animation/styles/app_colors.dart';
import 'package:chat_app/app/view/Aboutapp/aboutapp.dart';
import 'package:chat_app/app/view/profile/profile.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              ProfileMenuWidget(
                                  title: 'Report a problem',
                                  icon: Icons.bug_report,
                                  onpress: () async {
                                    await launchUrl(Uri.parse(
                                        'https://docs.google.com/forms/d/e/1FAIpQLScLgGpmoMVVZKR10dMhDc3hrkzl7-PZbBsJF3xijulRe4JzMA/viewform'));
                                  },
                                  color: Colors.purple),
                              SizedBox(
                                height: 14,
                              ),
                              ProfileMenuWidget(
                                  title: 'Send Feedback',
                                  icon: EneftyIcons.share_outline,
                                  onpress: () async {
                                    await launchUrl(Uri.parse(
                                        'https://docs.google.com/forms/d/e/1FAIpQLSfMi4FlVJJDilBkPo75FyQd3s9tQM0SFx_EsKprnZCgWWshnQ/viewform'));
                                  },
                                  color: Colors.cyan),
                              SizedBox(
                                height: 14,
                              ),
                              ProfileMenuWidget(
                                  title: 'About App',
                                  icon: Icons.error_outline,
                                  onpress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AboutApp(),
                                        ));
                                  },
                                  color: Colors.orangeAccent)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
