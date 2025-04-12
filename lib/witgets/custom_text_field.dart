import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodia_app/styling/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? sufixicon;
  final double? width;
  final double? hight;
  final IconData? iconfeild;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.hintText,
    this.sufixicon,
    this.width,
    this.hight,
    this.iconfeild,
    this.controller,
    this.validator,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 362.w,
      height: hight ?? 101.h,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText ?? false,
          textAlign: TextAlign.right, // RTL alignment
          textDirection: TextDirection.rtl, // Right-to-left direction
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            hintTextDirection: TextDirection.rtl, // RTL for hint text
            // Border styling
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 3.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.primarycolor, width: 3.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red, width: 3.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red, width: 3.0),
            ),

            fillColor: Colors.white, // White background
            filled: true,
            suffixIcon: sufixicon,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 25.h,
            ),
          ),
        ),
      ),
    );
  }
}
