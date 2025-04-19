import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/skip_witget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E5EC),
      body: SafeArea(
        child: Center(
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
              SizedBox(
                height: 313,
                width: 210,
                child: Image.asset(AppAssets.onboardingscreen1),
              ),
              const SizedBox(height: 44),
              Text(
                "اكلتك المفضلة أقرب إليك مما تتخيل!",
                style: TextStyle(
                  fontFamily: AppFonts.mainfontsname,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
