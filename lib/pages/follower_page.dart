import 'package:flutter/material.dart';
import 'package:foodia_app/pages/Witgets/follower_container.dart';
import 'package:foodia_app/pages/model/category_model_follower.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class FollowerPage extends StatelessWidget {
  const FollowerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WigetBack(onPressed: () => GoRouter.of(context).pop()),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
              Text("اتابعة", style: AppStyling.primarytextstyle),
              const SizedBox(height: 20),
              //============================
              SizedBox(
                height: 190, // Fixed height for the categories list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:
                      categoriesfollower
                          .length, // Fixed lowercase variable name
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Material(
                          child: Column(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  border: Border.all(
                                    width: 4,
                                    color: AppColors.primarycolor,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      categoriesfollower[index].iamge!,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  categoriesfollower[index].namefood!,
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                ),
              ),
              //===========================
              FollowerContainer(
                onpressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.chefinfopage);
                },
                namechef: "علي احمد ",
                namefood: "فرخة باربيكيو",
                pricefood: 400,
                imagechef: AppAssets.imagechef1,
                imagefood: AppAssets.foodpizza,
                describefood:
                    "دجاج مشوي بتتبيلة الباربيكيو الغنية بالنكهات المدخنة،\n متبل بتوابل خاصة ومقرمشًا من الخارج",
              ),
              FollowerContainer(
                onpressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.chefinfopage);
                },
                namechef: "علي احمد ",
                namefood: "فرخة باربيكيو",
                pricefood: 400,
                imagechef: AppAssets.imagechef1,
                imagefood: AppAssets.foodpizza,
                describefood:
                    "دجاج مشوي بتتبيلة الباربيكيو الغنية بالنكهات المدخنة،\n متبل بتوابل خاصة ومقرمشًا من الخارج",
              ),
              FollowerContainer(
                onpressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.chefinfopage);
                },
                namechef: "علي احمد ",
                namefood: "فرخة باربيكيو",
                pricefood: 400,
                imagechef: AppAssets.imagechef1,
                imagefood: AppAssets.foodpizza,
                describefood:
                    "دجاج مشوي بتتبيلة الباربيكيو الغنية بالنكهات المدخنة،\n متبل بتوابل خاصة ومقرمشًا من الخارج",
              ),
              FollowerContainer(
                onpressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.chefinfopage);
                },
                namechef: "علي احمد ",
                namefood: "فرخة باربيكيو",
                pricefood: 400,
                imagechef: AppAssets.imagechef1,
                imagefood: AppAssets.foodpizza,
                describefood:
                    "دجاج مشوي بتتبيلة الباربيكيو الغنية بالنكهات المدخنة،\n متبل بتوابل خاصة ومقرمشًا من الخارج",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
