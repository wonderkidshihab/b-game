import 'package:b3apps/Presentation/Controllers/exportcontrollers.dart';
import 'package:b3apps/Presentation/Pages/onboardings/Widgets/AknowledgementPage.dart';
import 'package:b3apps/Presentation/Pages/onboardings/Widgets/WelcomePageWidget.dart';
import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:b3apps/Presentation/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardingsPage extends StatefulWidget {
  @override
  _OnBoardingsPageState createState() => _OnBoardingsPageState();
}

class _OnBoardingsPageState extends State<OnBoardingsPage> {
  OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(
          () => PageView(
            scrollDirection: Axis.horizontal,
            controller: controller.pageController.value,
            children: [
              WelcomePage(),
              AcknowledgementPage(),
            ],
          ),
        ),
      ),
    );
  }
}
