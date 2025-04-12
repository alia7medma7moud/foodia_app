import 'package:flutter/material.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_styling.dart';
import 'package:foodia_app/witgets/primary_button.dart';
import 'package:foodia_app/witgets/wiget_back.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verifyotp extends StatefulWidget {
  const Verifyotp({super.key});

  @override
  State<Verifyotp> createState() => _VerifyotpState();
}

class _VerifyotpState extends State<Verifyotp> {
  bool ispassword = true;

  final formkey = GlobalKey<FormState>();
  late TextEditingController pincodecontroller;

  @override
  void initState() {
    
    super.initState();
    pincodecontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ======================= click back =============
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: WigetBack(
          onpress: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // ==============Logo===============
                    SizedBox(
                      width: 230,
                      height: 230,
                      child: Image.asset(
                        AppAssets.otpimage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    //=================Text=======================
                    Text("ادخل كود التحقق", style: AppStyling.primarytextstyle),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "لقد تم ارسال كود مكون من 4 ارقام علي رقم الهاتف الخاص بك",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    // ======================= pin code ===========
                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: PinCodeTextField(
                        textStyle: TextStyle(color: Colors.amber),
                        appContext: context,
                        length: 4,
                        controller: pincodecontroller,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldWidth: 42,
                          fieldHeight: 42,
                          shape: PinCodeFieldShape.circle,
                          selectedColor: AppColors.primarycolor,
                          inactiveColor: Colors.grey,
                        ),
                        onChanged: (value) {
                          // ignore: avoid_print
                          print("pin value : $value");
                        },
                        // onCompleted: (value) {
                        //   GoRouter.of(context).pushNamed(AppRoutes.newpassword);
                        // },
                      ),
                    ),
                    //========================Password===============
                    SizedBox(height: 10),
                    Text(
                      "لم يصلني كود تحقق؟ ارسل مره أخري",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),

                    SizedBox(height: 50),
                    //======================== Verifyotp Button=================
                    Primarybutton(
                      onpress: () {
                        GoRouter.of(context).pushNamed(AppRoutes.newpassword);
                        // if (formkey.currentState!.validate()) {
                        //   print(phonecontroller.text);
                        //   print(password.text);
                        // }
                      },

                      buttontext: "تاكيد",
                      fontsize: 23,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
