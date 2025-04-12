import 'package:flutter/material.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/skip_witget.dart';
import 'package:go_router/go_router.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEA500),
      body: Stack(
        children: [
          // Main centered content
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppAssets.onboardingscreen4),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "سجل كطاهٍ وابدأ في استقبال الطلبات، التواصل مع\nالعملاء، وتنمية عملك بسهولة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: AppFonts.mainfontsname,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Skip button positioned top-right
          Positioned(
            top: 40,
            right: 20,
            child: SkipWitget(
              onpress:  () {
                GoRouter.of(context).pushNamed(AppRoutes.firstpage);
              },
            ),
          ),
        ],
      ),
    );
  }
}