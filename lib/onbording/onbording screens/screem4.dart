import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEA500),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //======================================== image  ==================
            Image.asset(AppAssets.onboardingscreen4),
            SizedBox(height: 20),
            //=========================================== Text ================= 
            Text(
              "سجل كطاهٍ وابدأ في استقبال الطلبات، التواصل مع\n العملاء، وتنمية عملك بسهولة",
              style: TextStyle(
                fontFamily: AppFonts.mainfontsname,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
