import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/skip_witget.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E5EC),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24, top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [SkipWitget(onpress: () {})],
              ),
            ),
            SizedBox(height: 80),
            Image.asset(AppAssets.onboardingscreen2),

            Text(
              "عالم من الأكلات بين يديك… فقط اطلب واستمتع!",
              textAlign: TextAlign.center, // Added for better Arabic display
              style: TextStyle(
                fontFamily: AppFonts.mainfontsname,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
