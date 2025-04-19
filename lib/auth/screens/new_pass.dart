import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/custom_text_field.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class NewPass extends StatefulWidget {
  const NewPass({super.key});

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  bool ispassword = true;
  bool iscpassword = true;

  void _showdilog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: SizedBox(
            width: 124,
            height: 124,
            child: Image.asset(AppAssets.image),
          ),
          // title: Text(
          //   "ناجح",
          //   style: TextStyle(
          //     fontFamily: AppFonts.mainfontsname,
          //     color: Colors.white,
          //   ),
          // ),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                Text(
                  "تهانياً",
                  style: TextStyle(
                    fontFamily: AppFonts.mainfontsname,
                    color: AppColors.primarycolor,

                    fontSize: 40,
                  ),
                ),
                Text(
                  "تم تعديل كلمة السر بنجاح",
                  style: TextStyle(
                    fontFamily: AppFonts.mainfontsname,
                    color: AppColors.primarycolor,

                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Primarybutton(
                  hight: 43,
                  width: 165,
                  onpress: () {
                    Navigator.pop(context);
                  },
                  buttontext: "موافق",
                ),
              ],
            ),
          ),
          );
      },
    );
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
                child: Center(
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
                      SizedBox(height: 70),
                      // Text
                      Text(
                        "انشاء كلمة سر جديدة",
                        style: AppStyling.primarytextstyle,
                      ),
                      SizedBox(height: 145),
                      // Password Field
                      CustomTextField(
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
                          ),
                        ),
                        hintText: "كلمة السر",
                      ),
                      SizedBox(height: 15),
                      // Confirm Password Field
                      CustomTextField(
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
                          ),
                        ),
                        hintText: "تاكيد كلمة السر",
                      ),
                      SizedBox(height: 20),
                      // OK Button
                      Primarybutton(
                        onpress: _showdilog,
                        buttontext: "اعادة تعيين كلمة السر",
                        fontsize: 17,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
