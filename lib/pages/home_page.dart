import 'package:flutter/material.dart';
import 'package:foodia_app/pages/Witgets/food_card.dart';
import 'package:foodia_app/pages/Witgets/offer_container.dart';
import 'package:foodia_app/pages/model/category_model_home.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:foodia_app/styling/app_assets.dart';
import 'package:foodia_app/styling/app_colors.dart';
import 'package:foodia_app/styling/app_fonts.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  late List<Map<String, dynamic>> foodItems;

  @override
  void initState() {
    super.initState();
    // Initialize foodItems here where context is available
    foodItems = [
      {
        'addonpress': () {
          GoRouter.of(context).pushNamed(AppRoutes.foodpage);
        },
        'namechef': "الشيف علي",
        'discoudn': 400,
        'pricefood': 200,
        'namefood': "بيتزا سجق",
        'rating': 4.6,
        'imagechef': AppAssets.imagechef1,
        'imagefood': AppAssets.foodpizza,
        'makefood': "(نصف تسوية)",
      },
      {
        'addonpress': () {},
        'namechef': "الشيف محمد",
        'discoudn': 350,
        'pricefood': 250,
        'namefood': "بيتزا خضار",
        'rating': 4.2,
        'imagechef': AppAssets.imagechef1,
        'imagefood': AppAssets.foodpizza,
        'makefood': "(كاملة التسوية)",
      },
      {
        'addonpress': () {},
        'namechef': "الشيف أحمد",
        'discoudn': 300,
        'pricefood': 180,
        'namefood': "برجر لحم",
        'rating': 4.8,
        'imagechef': AppAssets.imagechef1,
        'imagefood': AppAssets.foodpizza,
        'makefood': "(متوسطة التسوية)",
      },
    ];
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_basket),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              SizedBox(
                height: 44,
                child: SearchBar(
                  controller: _searchController,
                  hintText: "ابحث عن اكلتك المفضلة",
                  leading: const Icon(Icons.search),
                  trailing: [
                    IconButton(icon: const Icon(Icons.mic), onPressed: () {}),
                  ],
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      // ignore: avoid_print
                      print("Submitted search for: $value");
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Offer Container
              const OfferContainer(),

              // Categories Header
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "عرض الكل",
                        style: TextStyle(
                          fontFamily: AppFonts.mainfontsname,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color(0xffB55638),
                        ),
                      ),
                    ),
                    Text(
                      "الاصناف",
                      style: TextStyle(
                        fontFamily: AppFonts.mainfontsname,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 200, // Fixed height for the categories list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length, // Fixed lowercase variable name
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Material(
                          child: Column(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  border: Border.all(
                                    width: 4,
                                    color: AppColors.primarycolor,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(categories[index].iamge!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  categories[index].namefood!,
                                  style: TextStyle(
                                    fontFamily: AppFonts.mainfontsname,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                ),
              ),

              // Food Items List using ListView.builder
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: foodItems.length,
                itemBuilder:
                    (context, index) => FoodCard(
                      addonpress: foodItems[index]['addonpress'],
                      namechef: foodItems[index]['namechef'],
                      discoudn: foodItems[index]['discoudn'],
                      pricefood: foodItems[index]['pricefood'],
                      namefood: foodItems[index]['namefood'],
                      rating: foodItems[index]['rating'],
                      imagechef: foodItems[index]['imagechef'],
                      imagefood: foodItems[index]['imagefood'],
                      makefood: foodItems[index]['makefood'],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
