import 'package:b3apps/Presentation/Pages/exportpages.dart';
import 'package:get/get.dart';

class AppRoutes{
  static String INITIAL = "/";
  static String SIGN_UP = "sign_up";
  static String SIGN_IN = "sign_in";
  static String ON_BOARDINGS = "on_boardings";
  static String HOMEPAGE = "homepage";

  static List<GetPage> pageRoutes = [
    GetPage(name: INITIAL, page:()=> SignUpPage()),
    GetPage(name: SIGN_UP, page:()=> SignUpPage()),
    GetPage(name: SIGN_IN, page:()=> SignInPage()),
    GetPage(name: ON_BOARDINGS, page:()=> OnBoardingsPage()),
    GetPage(name: HOMEPAGE, page:()=> HomePage()),
  ];
}