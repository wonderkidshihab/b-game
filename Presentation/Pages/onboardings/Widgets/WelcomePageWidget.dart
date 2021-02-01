import 'package:b3apps/Presentation/Controllers/exportcontrollers.dart';
import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:b3apps/Presentation/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final OnboardingController controller = Get.find<OnboardingController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "Welcome"
            .text
            .bold
            .size(TextSizes().XXL)
            .color(Theme.of(context).primaryColor)
            .makeCentered(),
        SizedBox(
          height: 25,
        ),
        "Here will be the Welcome title"
            .text
            .size(TextSizes().M)
            .makeCentered(),
        SizedBox(
          height: 15,
        ),
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation"
            .text
            .size(TextSizes().S)
            .center
            .makeCentered(),
        SizedBox(
          height: 25,
        ),
        Obx(
              () => DropdownButton(
            value: controller.dropdownItemValue.value,
            onChanged: (value) {
              controller.dropdownItemValue.value = value;
            },
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Theme.of(context).accentColor),
            focusColor: Theme.of(context).accentColor,
            elevation: 1,
            // dropdownColor: Theme.of(context).accentColor,
            items: [
              DropdownMenuItem(
                child: "Instagram".text.make(),
                value: "Instagram",
                onTap: () =>
                controller.dropDownHintText.value = "Put @username",
              ),
              DropdownMenuItem(
                child: "Friend".text.make(),
                value: "Friend",
                onTap: () => controller.dropDownHintText.value =
                "Put friend's username",
              ),
              DropdownMenuItem(
                child: "Youtube".text.make(),
                value: "Youtube",
                onTap: () =>
                controller.dropDownHintText.value = "Put @username",
              ),
              DropdownMenuItem(
                child: "Website".text.make(),
                value: "Website",
                onTap: () => controller.dropDownHintText.value =
                "Put website address",
              ),
              DropdownMenuItem(
                child: "Other".text.make(),
                value: "Other",
                onTap: () =>
                controller.dropDownHintText.value = "Identify Other",
              ),
            ],
          ),
        ),
        Obx(() => customTextField(
          context,
          controller: controller.welcomePageTextController.value,
          hintText: controller.dropDownHintText.value, function: (val) => MinLengthValidator(3, errorText: "At least 3 letters",),
        )),
        SizedBox(
          height: 25,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FlatButton(
            onPressed:() {
              //Make a web request
              controller.pageController.value.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            child: Text("Send"),
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
  }
}
