import 'package:b3apps/Presentation/Controllers/exportcontrollers.dart';
import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AcknowledgementPage extends StatefulWidget {
  @override
  _AcknowledgementPageState createState() => _AcknowledgementPageState();
}

class _AcknowledgementPageState extends State<AcknowledgementPage> {
  final OnboardingController controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Acknowledgement"
              .text
              .bold
              .size(TextSizes().XL)
              .color(Theme.of(context).primaryColor)
              .makeCentered(),
          SizedBox(
            height: 50,
          ),
          Obx(
            () => Row(
              children: [
                Checkbox(
                    value: controller.termCheck.value,
                    onChanged: (value) => controller.termCheck.value = value),
                Expanded(
                  child:
                      """I understand that this game may use fictional data and its purpose is only educational or amusement
            """
                          .text
                          .size(TextSizes().XS)
                          .wordSpacing(1.22)
                          .makeCentered(),
                ),
              ],
            ),
          ),
          Obx(
            () => ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FlatButton(
                onPressed: controller.termCheck.value ? () {
                  //Make a web request
                }: null,
                child: Text("Okay"),
                color: Theme.of(context).accentColor,
                disabledColor: Theme.of(context).disabledColor,
                disabledTextColor: Theme.of(context).backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
