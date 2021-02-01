import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  var pageController = PageController().obs;
  var dropdownItemValue = "Instagram".obs;
  var dropDownHintText = "@username".obs;
  var welcomePageTextController = TextEditingController().obs;
  var termCheck = false.obs;
}