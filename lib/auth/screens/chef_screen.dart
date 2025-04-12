import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class Chefscreen extends StatefulWidget {
  const Chefscreen({super.key});

  @override
  State<Chefscreen> createState() => _ChefscreenState();
}

class _ChefscreenState extends State<Chefscreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // @override
  // void dispose() {
  //   _nameController.dispose();
  //   _descriptionController.dispose();
  //   super.dispose();
  // }

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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Logo
                  SizedBox(
                    width: 186,
                    height: 186,
                    child: Image.asset(AppAssets.logo, fit: BoxFit.contain),
                  ),

                  // Title
                  Text("انشاء حساب طاهي", style: AppStyling.primarytextstyle),
                  const SizedBox(height: 3),

                  // Profile Picture
                  GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Container(
                          width: 133,
                          height: 133,
                          decoration: BoxDecoration(
                            // color: AppColors.primarycolor,
                            borderRadius: BorderRadius.circular(69),
                            border: Border.all(
                              color: AppColors.primarycolor,
                              width: 4,
                            ),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 70,
                            color: AppColors.primarycolor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 2),

                  // Description Field
                  Container(
                    height: 150,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: TextField(
                      controller: _descriptionController,
                      textAlign: TextAlign.right,
                      maxLines: 6,
                      textDirection:
                          TextDirection.rtl, // Right-to-left for Arabic
                      decoration: InputDecoration(
                        hintText: "الوصف ",
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide(
                            color: Color(0xffFE8C00),
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: AppColors.primarycolor,
                            width: 2,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.all(16),
                      ),
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Primarybutton(
                    onpress: () {},
                    buttontext: "تسجيل",
                    fontsize: 28,
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
