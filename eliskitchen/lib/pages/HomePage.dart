import 'package:eliskitchen/widgets/BottomNavBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:eliskitchen/animation/ScaleRoute.dart';
import 'package:eliskitchen/pages/SignInPage.dart';
import 'package:eliskitchen/widgets/SearchWidget.dart';
import 'package:eliskitchen/widgets/TopMenus.dart';
import 'package:eliskitchen/widgets/PopularFoodsWidget.dart';
import 'package:eliskitchen/widgets/BestFoodWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "3de3n na wobedi",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: SignInPage()));
              },
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
