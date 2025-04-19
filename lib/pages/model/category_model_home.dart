import 'package:foodia_app/styling/app_assets.dart';

class CategoryModelHome {
  String? namefood;
  String? iamge;
  CategoryModelHome({this.iamge, this.namefood});
}

List categories = [
  CategoryModelHome(namefood: "الحلويات", iamge: AppAssets.imagefood2),
  CategoryModelHome(namefood: "البيتزا", iamge: AppAssets.imagefood1),
  CategoryModelHome(namefood: "السندوتشات", iamge: AppAssets.foodsandwich),
  CategoryModelHome(namefood: "المجمدات", iamge: AppAssets.icecreem),
  CategoryModelHome(namefood: "النودلز", iamge: AppAssets.nodels),
];
