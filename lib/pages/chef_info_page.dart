import 'package:flutter/material.dart';
import 'package:foodia_app/pages/Witgets/chef_food_container.dart';
import 'package:foodia_app/pages/Witgets/chef_info_witget.dart';
import 'package:foodia_app/pages/Witgets/icon_add.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';

class ChefInfoPage extends StatefulWidget {
  const ChefInfoPage({super.key});

  @override
  State<ChefInfoPage> createState() => _ChefInfoPageState();
}

class _ChefInfoPageState extends State<ChefInfoPage> {
  bool isFollowing = true;
  int followerCount = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Back button
              Padding(
                padding: const EdgeInsets.only(left: 31, top: 15),
                child: Row(
                  children: [
                    WigetBack(onPressed: () => GoRouter.of(context).pop()),
                  ],
                ),
              ),

              const SizedBox(height: 15),
              ChefInfoWitget(
                imagechef: AppAssets.imagechef1,
                describechef:
                    "متخصصة في المحشي، الطواجن، المشويات، والحلويات الشرقية، تُحضر كل وجبة بحب ومكونات طازجة لضمان أفضل جودة وطعم",
              ),
              // Chef info header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Follow section
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 25,
                          child: IconAdd(
                            onpressed: () {
                              setState(() {
                                isFollowing = !isFollowing;
                                if (isFollowing) {
                                  followerCount--;
                                } else {
                                  followerCount++;
                                }
                              });
                            },
                            backgroundcolor:
                                isFollowing
                                    ? AppColors.primarycolor
                                    : Colors.grey,
                            texticon: isFollowing ? "متابعة" : "إلغاء المتابعة",
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "متابع",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          "$followerCount",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    // Chef name
                    Text(
                      "محمود علي احمد",
                      style: AppStyling.primarytextstyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              Divider(
                color: Colors.amber,
                thickness: 2,
                endIndent: 20,
                indent: 20,
              ),
              const SizedBox(height: 10),

              // Food items list
              ChefFoodContainer(
                onpressed: () {},
                namefood: "ورق عنب",
                imagefood: AppAssets.foodpizza,
                pricefood: 250,
                describefood:
                    "أوراق العنب المحشوة بالأرز المتبل والمطهوة ببطء\n للحصول على طعم غني وشهي",
                discound: 100,
              ),
              ChefFoodContainer(
                onpressed: () {},
                namefood: "محشي",
                imagefood: AppAssets.foodpizza,
                pricefood: 250,
                describefood:
                    "أوراق العنب المحشوة بالأرز المتبل والمطهوة ببطء\n للحصول على طعم غني وشهي",
                discound: 100,
              ),
              ChefFoodContainer(
                onpressed: () {},
                namefood: "ورق عنب",
                imagefood: AppAssets.foodpizza,
                pricefood: 250,
                describefood:
                    "أوراق العنب المحشوة بالأرز المتبل والمطهوة ببطء\n للحصول على طعم غني وشهي",
                discound: 100,
              ),
              ChefFoodContainer(
                onpressed: () {},
                namefood: "ورق عنب",
                imagefood: AppAssets.foodpizza,
                pricefood: 250,
                describefood:
                    "أوراق العنب المحشوة بالأرز المتبل والمطهوة ببطء\n للحصول على طعم غني وشهي",
                discound: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
