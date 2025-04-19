// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodia_app/auth/screens/register_screen.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/custom_text_field.dart';
import 'package:foodia_app/witgets/or_witget.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool ispassword = true;
  bool ischeckbox = true;

  final formkey = GlobalKey<FormState>();
  late TextEditingController phonecontroller;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    phonecontroller = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ==========================witget back =================
                    Padding(
                      padding: const EdgeInsets.only(left: 31),
                      child: Row(
                        children: [
                          WigetBack(
                            onPressed: () {
                              GoRouter.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // ==============Logo=======================================
                    SizedBox(
                      width: 186,
                      height: 186,
                      child: Image.asset(AppAssets.logo, fit: BoxFit.contain),
                    ),
                    //=================Text=====================================
                    Text("تسجيل الدخول", style: AppStyling.primarytextstyle),
                    SizedBox(height: 20),
                    //========================phone===============
                    CustomTextField(
                      //=============== controller =============
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل رقم الهاتف";
                        }
                        if (value.length < 11 || value.length > 11) {
                          return " برجاء ادخال رقم هاتف صحيح";
                        }

                        return null;
                      },
                      controller: phonecontroller,
                      //==================================
                      hintText: "رقم الهاتف",
                      obscureText: false,
                      prefixIcon: Icon(Icons.phone, size: 22),
                      // controller: _phoneController,
                    ),
                    //========================Password===============
                    CustomTextField(
                      //==============controller=============
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) return "ادخل كلمة السر ";

                        if (value.length < 8) {
                          return "برجاء ادخال اكتر من 8 حروف";
                        }
                        return null;
                      },
                      //===========================
                      obscureText: ispassword,
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            ispassword = !ispassword;
                          });
                        },
                        icon: Icon(
                          ispassword
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                          size: 22,
                        ),
                      ),
                      hintText: "كلمة السر",
                    ),
                    //=====================forget password ==============
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: AppColors.primarycolor,

                              checkColor: Colors.white,
                              value: ischeckbox,
                              onChanged: (value) {
                                setState(() {
                                  ischeckbox = value ?? false;
                                });
                              },
                            ),

                            Text(
                              "ذكرني",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(
                              context,
                            ).pushNamed(AppRoutes.forgetpassword);
                          },
                          child: const Text(
                            "هل نسيت كلمة السر ؟",
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          ),
                        ),
                      ],
                    ),

                    //======================== Login Button=================
                    Primarybutton(
                      onpress: () {
                        if (formkey.currentState!.validate()) {
                          GoRouter.of(context).pushNamed(AppRoutes.homepage);
                        }
                      },

                      buttontext: "تسجيل دخول",
                      fontsize: 23,
                    ),
                    SizedBox(height: 10),
                    //=============  oR =========================
                    OrWitget(),
                    SizedBox(height: 10),
                    //================= text Don't have Account ===============
                    RichText(
                      text: TextSpan(
                        text: "ليس لديك حساب ؟   ",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "تسجيل ",
                            style: TextStyle(
                              fontSize: 19,
                              color: AppColors.primarycolor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Registerpage(),
                                      ),
                                    );
                                  },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
