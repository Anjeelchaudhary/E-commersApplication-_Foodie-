import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/pages/food/popular_food_detail.dart';
import 'package:flutter_ecommers_app/pages/food/recommended_food_detail.dart';
import 'package:flutter_ecommers_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetail(),
    );
  }
}
