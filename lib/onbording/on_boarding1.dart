import 'package:flutter/material.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/skip_witget.dart';
import 'package:go_router/go_router.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.onbording),
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
          ),

          SkipWitget(
            top: 40,
            right: 20,
            onpress: () {
              GoRouter.of(context).pushNamed(AppRoutes.onbordingscreen2);
            },
          ),

          // Next Button (Bottom)
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Primarybutton(
              onpress: () {
                GoRouter.of(context).pushNamed(AppRoutes.onbordingscreen2);
              },
              buttontext: "ابدا الان",
              fontsize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
