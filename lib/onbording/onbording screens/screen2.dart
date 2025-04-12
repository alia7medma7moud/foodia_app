import 'package:flutter/material.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/skip_witget.dart';
import 'package:go_router/go_router.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEA500),
      body: Stack(
        children: [
          // Main content (centered)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.onboardingscreen2),
                const SizedBox(height: 20),
                Text(
                  "انضم إلى منصة تجمع الطهاة \nالموهوبين مع العملاء الباحثين \nعن أفضل الأطباق المنزلية",
                  textAlign: TextAlign.center, // Added for better Arabic display
                  style: TextStyle(
                    fontFamily: AppFonts.mainfontsname,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Skip button (top-right)
          Positioned(
            top: 40,
            right: 20,
            child: SkipWitget( // Fixed spelling
              onpress: () {
                GoRouter.of(context).pushNamed(AppRoutes.firstpage);
              },
            ),
          ),
        ],
      ),
    );
  }
}