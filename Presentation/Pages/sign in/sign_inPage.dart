import 'package:b3apps/Presentation/Utilities/exportutilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
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
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Email',
                      hintStyle: Theme.of(context).textTheme.caption),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                      hintStyle: Theme.of(context).textTheme.caption),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Sign In"),
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
