import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class SkipWitget extends StatelessWidget {
  final void Function()? onpress;
  final double? top;
  final double? right;
  final double? buttom;
  final double? left;
  const SkipWitget({super.key, this.onpress , this.buttom ,this.left  ,this.right , this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      bottom: buttom,
      left: left,
      child: Container(
        height: 52,
        width: 88,
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
      ),
    );
  }
}
