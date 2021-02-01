import 'package:b3apps/Presentation/Pages/home/Widgets/homeWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Earn More"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Text(
                "Ads",
                style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
              ),
              Text(
                "Convert",
                style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
              ),
              Text(
                "Shop",
                style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            VideoTab(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
