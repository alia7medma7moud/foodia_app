import 'package:foodia_app/styling/app_assets.dart';

class CategoryModelFollower {
  String? namefood;
  String? iamge;
  CategoryModelFollower({this.iamge, this.namefood});
}

List categoriesfollower = [
  CategoryModelFollower(namefood: "الشيف هالة", iamge: AppAssets.imagechef3),
  CategoryModelFollower(namefood: "محمد احمد", iamge: AppAssets.imagechef1),
  CategoryModelFollower(namefood: "ياسمين احمد", iamge: AppAssets.imagechef2),
  CategoryModelFollower(namefood: "عبدالحميد", iamge: AppAssets.imagechef1),
  CategoryModelFollower(namefood: "صابر علي", iamge: AppAssets.imagechef1),
];
