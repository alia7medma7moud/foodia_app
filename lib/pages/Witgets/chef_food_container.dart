import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class ChefFoodContainer extends StatelessWidget {
  final String? imagefood;
  final String? namefood;
  final int? pricefood;
  final String? describefood;
  final void Function()? onpressed;
  final int? discound;
  const ChefFoodContainer({
    super.key,
    required this.onpressed,
    this.describefood,
    this.discound,
    this.imagefood,
    this.namefood,
    this.pricefood,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 10, left: 10),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 3, color: Colors.amber),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            //==================== Iconbuttom ========
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
                                onPressed: onpressed,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              children: [
                                //===================== Price ==========
                                Row(
                                  children: [
                                    Text(
                                      "ج.م",
                                      style: TextStyle(
                                        fontFamily: AppFonts.mainfontsname,

                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      " ${pricefood ?? 0}",
                                      style: TextStyle(
                                        fontFamily: AppFonts.mainfontsname,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
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
                                      "${discound ?? 0}",
                                      style: TextStyle(
                                        fontFamily: AppFonts.mainfontsname,
                                        // ignore: deprecated_member_use
                                        color: Colors.black.withOpacity(0.6),
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            //======================name food =======
                            Text(
                              namefood ?? "",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                color: AppColors.primarycolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        //==========================discribe food =========
                        SizedBox(
                          height: 57,
                          width: 253,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              describefood ?? "",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            //============================image food ==========
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 4, color: AppColors.primarycolor),
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage(imagefood ?? ""),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
