import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/skip_witget.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
              Image.asset(AppAssets.onboardingscreen3),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "اطلب من الشيف المفضل لديك",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppFonts.mainfontsname,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "كل وصفة تبدأ بمكون سري… حب الطبخ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: AppFonts.mainfontsname,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
