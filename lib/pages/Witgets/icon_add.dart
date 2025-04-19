import 'package:flutter/material.dart';
import 'package:foodia_app/styling/app_fonts.dart';

class IconAdd extends StatelessWidget {
  final double? width;
  final double? heught;
  final void Function()? onpressed;
  final Color? backgroundcolor;
  final String? texticon;
  final double? fontsize;

  const IconAdd({
    super.key,
    required this.onpressed,
    this.texticon,
    this.heught,
    this.width,
    this.backgroundcolor,
    this.fontsize
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: SizedBox(
        width: width,
        height: heught,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundcolor,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: onpressed,
          child: Text(
            texticon ?? "",
            style: TextStyle(
              fontFamily: AppFonts.mainfontsname,
              color: Colors.white,
              fontSize: fontsize ?? 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
