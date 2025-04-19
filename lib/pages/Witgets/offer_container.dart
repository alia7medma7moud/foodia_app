import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/primary_button.dart';

class OfferContainer extends StatelessWidget {
  const OfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(AppAssets.offer),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Price Row
                    Column(
                      children: [
                        Text(
                          "الآن فقط",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "150ج.م",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "200ج.م",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                // ignore: deprecated_member_use
                                color: Colors.black.withOpacity(0.7),
                                decoration: TextDecoration.lineThrough,
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Primarybutton(
                            width: 110,
                            hight: 35,
                            buttontext: "اطلب الان",
                            buttoncolor: const Color(0xff4A3D26),
                            textcolor: Colors.white,
                            onpress: () {},
                          ),
                        ),
                      ],
                    ),
                    Image.asset(AppAssets.piazza),
                  ],
                ),
              ),
            );
  }
}