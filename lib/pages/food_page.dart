import 'package:flutter/material.dart';
import 'package:foodia_app/pages/Witgets/icon_add.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:foodia_app/witgets/primary_button.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  bool isfollow = true;
  bool addbasket = true;
  int counter = 1;
  final double price = 500;
  double allprice = 0;

  @override
  void initState() {
    super.initState();
    allprice = price; // Initialize with base price
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200, // Increased height for better visibility
                width: double.infinity,
                child: Image.asset(AppAssets.imagechef1, fit: BoxFit.cover),
              ),

              // Content Section
              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      30,
                    ), // Increased radius for smoother curve
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 214,
                          height: 94,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: AppColors.primarycolor,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "السعر الاجمالي",
                                    style: TextStyle(
                                      fontFamily: AppFonts.mainfontsname,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "ج.م",
                                        style: TextStyle(
                                          fontFamily: AppFonts.mainfontsname,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "$allprice",
                                        style: TextStyle(
                                          fontFamily: AppFonts.mainfontsname,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: 120,
                                    height: 23,
                                    child: Primarybutton(
                                      buttoncolor:
                                          addbasket
                                              ? AppColors.primarycolor
                                              : Colors.grey,
                                      onpress: () {
                                        setState(() {
                                          addbasket = !addbasket;
                                        });
                                      },
                                      buttontext:
                                          addbasket
                                              ? "اضف للسلة"
                                              : "تم الاضافة",
                                      textcolor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 35,
                                  color: AppColors.primarycolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.amber,
                                image: DecorationImage(
                                  image: AssetImage(AppAssets.imagechef3),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "الشيف هاله",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primarycolor,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: 120,
                              height: 35,
                              child: Primarybutton(
                                buttontext:
                                    isfollow ? "متابعة" : "الغاءالمتابعة",
                                fontsize: 12,
                                fontWeight: FontWeight.bold,
                                buttoncolor:
                                    isfollow
                                        ? AppColors.primarycolor
                                        : Colors.grey,
                                onpress: () {
                                  setState(() {
                                    isfollow = !isfollow;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "ج.م",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primarycolor,
                                    fontSize: 25,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "$price",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primarycolor,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "ج.م",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    // ignore: deprecated_member_use
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "1200",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    // ignore: deprecated_member_use
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              " (قسم البيتزا)",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primarycolor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "(تسوية)",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  " بيتزا فراخ",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primarycolor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "(وقت التحضير  : ${20} دقيقة)",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primarycolor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 220),
                              child: Text(
                                "الوصف",
                                style: TextStyle(
                                  fontFamily: AppFonts.mainfontsname,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              "بيتز بسيط يمكن وصفه بأنه يتكون من عجينة رقيقة \n مغطاة بصلصة طماطم لذيذة وجبنة موزاريلا \nذائبة، مع إضافة بعض أوراق الريحان ",
                              style: TextStyle(
                                fontFamily: AppFonts.mainfontsname,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.bold,

                                fontSize: 13,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconAdd(
                              width: 52,
                              heught: 28,
                              onpressed: () {
                                setState(() {
                                  if (counter > 1) {
                                    counter--;
                                    allprice = price * counter;
                                  }
                                });
                              },
                              backgroundcolor: AppColors.primarycolor,
                              texticon: "-",
                            ),
                            SizedBox(
                              width: 72,
                              height: 38,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                    width: 2,
                                    color: const Color(0xffCA9744),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "$counter",
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            IconAdd(
                              width: 52,
                              heught: 28,
                              onpressed: () {
                                setState(() {
                                  counter++;
                                  allprice = price * counter;
                                });
                              },
                              backgroundcolor: AppColors.primarycolor,
                              texticon: "+",
                            ),
                          ],
                        ),
                        Text(
                          "العدد",
                          style: TextStyle(
                            fontFamily: AppFonts.mainfontsname,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Primarybutton(
                          onpress: () {},
                          buttontext: "كتابة تعليق",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
