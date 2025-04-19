import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/styling/app_styling.dart';

class FollowerContainer extends StatelessWidget {
  final void Function()? onpressed;
  final String? namechef;
  final String? namefood;
  final String? imagefood;
  final String? imagechef;
  final int? pricefood;
  final String? describefood;

  const FollowerContainer({
    super.key,
    required this.onpressed,
    this.describefood,
    this.imagefood,

    this.namechef,
    this.namefood,
    this.pricefood,

    this.imagechef,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(minHeight: 222),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.amber),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Chef Info Row
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                        size: 24,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    namechef ?? "",
                    style: AppStyling.primarytextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 3,
                        color: AppColors.primarycolor,
                      ),
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage(imagechef ?? ""),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Price Row
              Row(
                children: [
                  Text(
                    " ${pricefood ?? 1}",
                    style: TextStyle(
                      fontFamily: AppFonts.mainfontsname,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "ج.م",
                    style: TextStyle(
                      fontFamily: AppFonts.mainfontsname,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Food Info Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namefood ?? "",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primarycolor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          describefood ?? " ",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 160,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(imagefood ?? ""),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
