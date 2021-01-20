import 'package:b3apps/Presentation/Pages/exportpages.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String SIGN_UP = "sign_up";
  static String SIGN_IN = "sign_in";

  static List<GetPage> pageRoutes = [
    GetPage(name: SIGN_UP, page:()=> SignUpPage()),
    GetPage(name: SIGN_IN, page:()=> SignInPage()),
  ];
}