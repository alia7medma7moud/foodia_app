import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_colors.dart';

class WigetBack extends StatelessWidget {
  final void Function()? onPressed;
  const WigetBack({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.primarycolor,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // Remove default padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 16, // Consider specifying size
          ),
        ),
      ),
    );
  }
}
