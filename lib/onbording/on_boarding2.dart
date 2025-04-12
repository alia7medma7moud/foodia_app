import 'package:flutter/material.dart';
import 'package:foodia_app/onbording/onbording%20screens/screem4.dart';
import 'package:foodia_app/onbording/onbording%20screens/screen1.dart';
import 'package:foodia_app/onbording/onbording%20screens/screen2.dart';
import 'package:foodia_app/onbording/onbording%20screens/screen3.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:go_router/go_router.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [Screen1(), Screen2(), Screen3(), Screen4()],
          ),

          Container(
            alignment: Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(controller: pageController, count: 4),
                SizedBox(width: 70),
                GestureDetector(
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: AppColors.primarycolor,
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(AppRoutes.firstpage);
                      },
                      icon: Icon(Icons.chevron_right, size: 35),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // child:
          ),
        ],
      ),
    );
  }
}
