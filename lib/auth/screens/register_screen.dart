import 'package:flutter/material.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/custom_text_field.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  bool ispassword = true;
  bool iscpassword = true;

  final formky = GlobalKey<FormState>();
  late TextEditingController namecontroller;
  late TextEditingController phonecontroller;
  late TextEditingController emailcontroller;
  late TextEditingController passcontroller;
  late TextEditingController confirmpasscontroller;

  @override
  void initState() {
    super.initState();
    phonecontroller = TextEditingController();
    namecontroller = TextEditingController();
    emailcontroller = TextEditingController();
    passcontroller = TextEditingController();
    confirmpasscontroller = TextEditingController();
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
                key: formky,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //============================witget back ===========
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
                    // ==============Logo===============
                    SizedBox(
                      width: 186,
                      height: 150,
                      child: Image.asset(AppAssets.logo, fit: BoxFit.contain),
                    ),
                    //=================Text=======================
                    Text("Regiser Now", style: AppStyling.primarytextstyle),
                    SizedBox(height: 12),

                    //========================username===============
                    CustomTextField(
                      //================username controller =============
                      controller: namecontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخب اسم المستخدم";
                        }
                        return null;
                      },
                      hintText: "اسم المستخدم",
                      prefixIcon: Icon(Icons.person, size: 30),
                    ),

                    //======================== phone ===================
                    CustomTextField(
                      //================== phone controller ======
                      controller: phonecontroller,
                      validator: (value) {
                        if (value!.isEmpty) return "ادخل رقم الهاتف";

                        if (value.length > 11) {
                          return "ادخل رقم هاتف صحيح";
                        }
                        return null;
                      },
                      hintText: "رقم الهاتف",
                      obscureText: false,
                      prefixIcon: Icon(Icons.phone, size: 26),
                    ),
                    //========================Email====================
                    CustomTextField(
                      controller: emailcontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل البريد الالكتروني";
                        }
                        return null;
                      },
                      hintText: "البريد الالكتروني",
                      iconField: Icons.email,
                      prefixIcon: Icon(Icons.email, size: 22),
                    ),
                    //========================Password===============
                    CustomTextField(
                      controller: passcontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل كلمة السر";
                        }
                        if (value.length < 8) {
                          return "كلمة السر لا تقل عن 8 احرف";
                        }
                        return null;
                      },
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
                    //========================Confirm Password===============
                    CustomTextField(
                      controller: confirmpasscontroller,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل تاكيد كلمة السر";
                        }
                        if (value.length < 8) {
                          return "كلمة السر لا تقل عن 8 احرف";
                        }
                        return null;
                      },
                      obscureText: iscpassword,
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            iscpassword = !iscpassword;
                          });
                        },
                        icon: Icon(
                          iscpassword
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                          size: 22,
                        ),
                      ),
                      hintText: "تاكيد كلمة السر",
                    ),
                    //========================Sign UP Button=================
                    Primarybutton(
                      onpress: () {
                        if (formky.currentState!.validate()) {
                          // print(phonecontroller.text);
                          // print(password.text);
                        }
                        GoRouter.of(context).pushNamed(AppRoutes.verifyotp);
                      },

                      buttontext: "تسجيل",
                      fontsize: 23,
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
