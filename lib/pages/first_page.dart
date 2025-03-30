import 'package:flutter/material.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  final formKey = GlobalKey<FormState>();
  var chosenValue;
  List<String> gameList = ["Handball", "Volleyball", "Football", "Badminton"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ======================= click back ===========================
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: WigetBack(
          onpress: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // ==============Logo=======================================
                  SizedBox(
                    width: 186,
                    height: 186,
                    child: Image.asset(AppAssets.logo, fit: BoxFit.contain),
                  ),
                  //=================Text=====================================
                  Text(
                    " Welcome To FOODIA",
                    style: AppStyling.primarytextstyle,
                  ),
                  SizedBox(height: 20),
                  Primarybutton(
                    onpress: () {
                      GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                    },
                    buttontext: "تسجيل الدخول ",
                    fontsize: 25,
                  ),
                  SizedBox(height: 20),
                  Primarybutton(
                    onpress: () {
                      GoRouter.of(context).pushNamed(AppRoutes.chefscreen);
                    },
                    buttontext: "انشاء حساب شيف",
                    fontsize: 20,
                  ),
                  SizedBox(height: 20),
                  Primarybutton(
                    onpress: () {
                      GoRouter.of(context).pushNamed(AppRoutes.signinScreen);
                    },
                    buttontext: "انشاء حساب عميل",
                    fontsize: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
