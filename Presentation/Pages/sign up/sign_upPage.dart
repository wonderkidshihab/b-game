import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:b3apps/Presentation/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              customTextField(context, controller: TextEditingController(), hintText: "Email"),
              SizedBox(
                height: 15,
              ),
              customTextField(context, controller: TextEditingController(), hintText: "Password"),
              SizedBox(
                height: 15,
              ),
              customTextField(context, controller: TextEditingController(), hintText: "Confirm Password"),
              SizedBox(
                height: 25,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                  color: Theme.of(context).accentColor,
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppRoutes.SIGN_IN);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Sign In", style: Theme.of(context).textTheme.overline,),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
