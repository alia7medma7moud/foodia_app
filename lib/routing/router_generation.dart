import 'package:foodia_app/auth/screens/forget_password.dart';
import 'package:foodia_app/auth/screens/log_in.dart';
import 'package:foodia_app/auth/screens/new_pass.dart';
import 'package:foodia_app/auth/screens/register_screen.dart';
import 'package:foodia_app/auth/screens/verify_otp_page.dart';
import 'package:foodia_app/onbording/on_boarding1.dart';
import 'package:foodia_app/onbording/on_boarding2.dart';
import 'package:foodia_app/pages/chef_info_page.dart';
import 'package:foodia_app/pages/follower_page.dart';
import 'package:foodia_app/pages/food_page.dart';
import 'package:foodia_app/pages/main_page.dart';
import 'package:foodia_app/routing/app_routes.dart';
import 'package:go_router/go_router.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBordingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBordingScreen,
        name: AppRoutes.onBordingScreen,
        // ignore: non_constant_identifier_names
        builder: (context, State) => const OnBoarding1(),
      ),
      GoRoute(
        path: AppRoutes.signinScreen,
        name: AppRoutes.signinScreen,
        // ignore: non_constant_identifier_names
        builder: (context, State) => Registerpage(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        // ignore: non_constant_identifier_names
        builder: (context, State) => LogIn(),
      ),

      GoRoute(
        path: AppRoutes.forgetpassword,
        name: AppRoutes.forgetpassword,
        // ignore: non_constant_identifier_names
        builder: (context, State) => ForgetPassword(),
      ),
      GoRoute(
        path: AppRoutes.newpassword,
        name: AppRoutes.newpassword,
        // ignore: non_constant_identifier_names
        builder: (context, State) => NewPass(),
      ),
      GoRoute(
        path: AppRoutes.verifyotp,
        name: AppRoutes.verifyotp,
        // ignore: non_constant_identifier_names
        builder: (context, State) => Verifyotp(),
      ),

      GoRoute(
        path: AppRoutes.onbordingscreen2,
        name: AppRoutes.onbordingscreen2,
        // ignore: non_constant_identifier_names
        builder: (context, State) => OnBoarding2(),
      ),
      GoRoute(
        path: AppRoutes.homepage,
        name: AppRoutes.homepage,
        // ignore: non_constant_identifier_names
        builder: (context, State) => Mainpages(),
      ),
        GoRoute(
        path: AppRoutes.foodpage,
        name: AppRoutes.foodpage,
        // ignore: non_constant_identifier_names
        builder: (context, State) =>FoodPage() ,
      ),
      GoRoute(
        path: AppRoutes.followerpage,
        name: AppRoutes.followerpage,
        // ignore: non_constant_identifier_names
        builder: (context, State) =>FollowerPage() ,
      ),
            GoRoute(
        path: AppRoutes.chefinfopage,
        name: AppRoutes.chefinfopage,
        // ignore: non_constant_identifier_names
        builder: (context, State) =>ChefInfoPage(),
      ),
    ],
  );
}
