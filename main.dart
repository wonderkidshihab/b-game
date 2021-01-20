import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:flutter/material.dart';
import 'package:b3apps/Presentation/Pages/exportpages.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "B Game",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.SIGN_UP,
      getPages: AppRoutes.pageRoutes,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          caption: TextStyle(color: Colors.white, fontSize: 15),
          button: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          overline: Theme.of(context).textTheme.bodyText2.copyWith(
                color: Colors.blueAccent,
            fontWeight: FontWeight.bold
              ),
        ),
        buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
            height: 50,
            buttonColor: Colors.blueAccent,
            minWidth: 100),
      ),
    );
  }
}
