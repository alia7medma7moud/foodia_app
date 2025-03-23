import 'package:flutter/material.dart';

import 'package:foodia_app/styling/app_assets.dart';

import 'package:foodia_app/styling/app_fonts.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEA500),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.onboardingscreen1),
            // SizedBox(height: 20),
            Text(
              "ابدأ رحلتك كطاهٍ محترف",
              style: TextStyle(
                fontFamily: AppFonts.mainfontsname,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
