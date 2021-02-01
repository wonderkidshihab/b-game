import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:b3apps/Presentation/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue.withOpacity(0.5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
          child: Form(
            key: _key,
            child: Column(
              children: [
                Center(
                    child: Icon(
                  Icons.description,
                  size: 75,
                  color: Theme.of(context).primaryColor,
                )),
                Text("B Game", style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 25,
                ),
                customTextField(context,
                    controller: nameController,
                    hintText: "Email",
                    function: EmailValidator(errorText: "Email is not valid")),
                SizedBox(
                  height: 15,
                ),
                customTextField(context,
                    controller: passwordController,
                    hintText: "Password",
                    function: MinLengthValidator(6,
                        errorText:
                            "Password should be at least 6 characters long")),
                SizedBox(
                  height: 15,
                ),
                customTextField(
                  context,
                  controller: TextEditingController(),
                  hintText: "Confirm Password",
                  function: (val) {
                    printInfo(info: val.toString());
                    printInfo(info: passwordController.text);
                    MatchValidator(errorText: "Password doesn't match")
                          .validateMatch(val, passwordController.text);
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FlatButton(
                    onPressed: () {
                      if (_key.currentState.validate()) {
                        Get.offAndToNamed(AppRoutes.ON_BOARDINGS);
                      } else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Error".text.center.make()));
                      }
                    },
                    child: Text("Sign Up"),
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.SIGN_IN);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sign In",
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
