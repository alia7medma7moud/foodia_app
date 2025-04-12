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
          backgroundColor: AppColors.primarycolor,
          title: Text(
            "Success!",
            style: TextStyle(
              fontFamily: AppFonts.mainfontsname,
              color: Colors.white,
            ),
          ),
          content: Text(
            "Your password has been updated successfully.",
            style: TextStyle(
              fontFamily: AppFonts.mainfontsname,
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                // GoRouter.of(
                //   context,
                // ).push(AppRoutes.loginScreen); // Navigate to login
              },
              child: Text(
                "OK",
                style: TextStyle(
                  fontFamily: AppFonts.mainfontsname,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Form(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 65),
                      // Photo
                      SizedBox(
                        width: 190,
                        height: 190,
                        child: Image.asset(
                          AppAssets.newpass,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 15),
                      // Text
                      Text(
                        "Create New Password",
                        style: AppStyling.primarytextstyle,
                      ),
                      SizedBox(height: 15),
                      // Password Field
                      CustomTextField(
                        obscureText: ispassword,
                        sufixicon: IconButton(
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
                        hintText: "Password",
                      ),
                      SizedBox(height: 15),
                      // Confirm Password Field
                      CustomTextField(
                        obscureText: iscpassword,
                        sufixicon: IconButton(
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
                        hintText: "Confirm Password",
                      ),
                      SizedBox(height: 20),
                      // OK Button
                      Primarybutton(
                        onpress: _showdilog,
                        buttontext: "OK",
                        fontsize: 28,
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
