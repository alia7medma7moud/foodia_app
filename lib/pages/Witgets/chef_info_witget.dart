import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class ChefInfoWitget extends StatelessWidget {
  final String? describechef;
  final int? followers;
  final String? imagechef;
  const ChefInfoWitget({
    super.key,
    this.describechef,
    this.followers,
    this.imagechef,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SizedBox(
                height: 57,
                width: 253,
                child: Text(
                  describechef ?? "",
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
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 3, color: AppColors.primarycolor),
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage(imagechef ?? ""),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
