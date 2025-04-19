import 'package:flutter/material.dart';
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
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              children: const [Screen1(), Screen2(), Screen3()],
            ),
            Container(
              alignment: const Alignment(0, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: WormEffect(
                      activeDotColor: AppColors.primarycolor,
                      dotColor: Colors.blue,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                  const SizedBox(width: 200),
                  GestureDetector(
                    onTap: _handleNext,
                    child: Container(
                      width: 41,
                      height: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.primarycolor,
                      ),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
