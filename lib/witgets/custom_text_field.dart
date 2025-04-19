import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final double? width;
  final double? height;
  final IconData? iconField;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.width,
    this.height,
    this.iconField,
    this.controller,
    this.validator,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 327.w,
      height: height ?? 94.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: TextFormField(
          style: TextStyle(
            fontFamily: AppFonts.mainfontsname,
            fontSize: 20.sp,
            color: Colors.blue,
          ),
          controller: controller,
          validator: validator,
          obscureText: obscureText ?? false,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            isDense: true, // This helps control the vertical density
            filled: true,
            fillColor: Colors.white,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black38,
              fontSize: 20.sp,
              fontFamily: AppFonts.mainfontsname,
            ),
            hintTextDirection: TextDirection.rtl,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 4.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 4.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 4.0),
            ),

            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 4.0),
            ),
            errorStyle: TextStyle(
              fontFamily: AppFonts.mainfontsname,
              fontSize: 14.sp,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
