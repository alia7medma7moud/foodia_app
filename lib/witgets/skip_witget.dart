// skip_witget.dart
import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class SkipWitget extends StatelessWidget {
  final void Function()? onpress;
  const SkipWitget({
    super.key,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 59,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.primarycolor,
      ),
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onpress,
        child: Text(
          "تخطي",
          style: TextStyle(
            fontFamily: AppFonts.mainfontsname,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}