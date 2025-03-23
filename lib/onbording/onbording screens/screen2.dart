import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEA500),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.onboardingscreen2),
            SizedBox(height: 20),
            Text(
              "انضم إلى منصة تجمع الطهاة \nالموهوبين مع العملاء الباحثين \nعن أفضل الأطباق المنزلية",
              style: TextStyle(
                fontFamily: AppFonts.mainfontsname,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
