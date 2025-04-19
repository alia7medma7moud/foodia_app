import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class Primarybutton extends StatefulWidget {
  final String? buttontext;
  final Color? buttoncolor;
  final double? width;
  final double? hight;
  final double? borderrediuse;
  final Color? textcolor;
  final double? fontsize;
    Function()? onpress;
  final FontWeight? fontWeight;

    Primarybutton({
    super.key,
    this.buttontext,
    this.buttoncolor,
    this.width,
    this.hight,
    this.borderrediuse,
    this.textcolor,
    this.onpress,
    this.fontsize,
    this.fontWeight,
  });

  @override
  State<Primarybutton> createState() => _PrimarybuttonState();
}

class _PrimarybuttonState extends State<Primarybutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpress,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.buttoncolor ?? AppColors.primarycolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderrediuse ?? 50.r),
        ),
        fixedSize: Size(widget.width ?? 240.w, widget.hight ?? 48.h),
      ),
      child: Text(
        widget.buttontext ?? "",
        style: TextStyle(
          color: widget.textcolor ?? Colors.white,
          fontFamily: AppFonts.mainfontsname,
          fontWeight: widget.fontWeight,
          fontSize: widget.fontsize ?? 16.sp,
        ),
      ),
    );
  }
}
