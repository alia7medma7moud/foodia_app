import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class FoodCard extends StatelessWidget {
  final String? namechef;
  final String? namefood;
  final String? makefood;
  final int? pricefood;
  final int? discoudn;
  final double? rating;
  final String? imagefood;
  final String? imagechef;
  final void Function()? addonpress;
  const FoodCard({
    super.key,
    required this.addonpress,
    this.discoudn,
    this.imagefood,
    this.makefood,
    this.namechef,
    this.namefood,
    this.pricefood,
    this.rating,
    this.imagechef,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.amber),
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFEEEEEE),
        ),
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Row(
            children: [
              // Chef Info Column
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 2,
                        color: AppColors.primarycolor,
                      ),
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage(imagechef ?? ""),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Text(
                    namechef ?? "",
                    style: TextStyle(
                      fontFamily: AppFonts.mainfontsname,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: addonpress,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),

              // Food Details Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          makefood ?? "",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            color: Colors.amber[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          namefood ?? "",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            // =====================Rating Row=================
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "${rating ?? 0.0}",
                                  style: TextStyle(
                                    color: const Color(0xFF868686),
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  "تقييم",
                                  style: TextStyle(
                                    color: const Color(0xFF868686),
                                    fontFamily: AppFonts.mainfontsname,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "20",
                                  style: TextStyle(
                                    color: const Color(0xFF868686),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            // ================Price Row ======================
                            Row(
                              children: [
                                Text(
                                  "ج.م",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "${pricefood ?? 0}",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),

                                const SizedBox(width: 12),
                                Text(
                                  "ج.م",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    // ignore: deprecated_member_use
                                    color: Colors.black.withOpacity(0.6),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "${discoudn ?? 0}",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    // ignore: deprecated_member_use
                                    color: Colors.black.withOpacity(0.6),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //====================image food =============
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 120,
                            height: 125,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imagefood ?? AppAssets.foodpizza,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
