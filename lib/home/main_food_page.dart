import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/widgets/big_text.dart';
import 'package:flutter_ecommers_app/widgets/small_text.dart';
import '../utils/colors.dart';
import '../home/food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //This code is used to see the height of the device
    // print("current height is" + MediaQuery.of(context).size.height.toString());

    return Scaffold(
        body: Column(
      children: [
        //this container is showing the header
        Container(
          margin: const EdgeInsets.only(top: 45, bottom: 15),
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: "Nepal",
                    color: AppColors.mainColor,
                    size: 30,
                  ),
                  Row(
                    children: [
                      SmallText(
                        text: "Kathmandu",
                        color: Colors.black54,
                      ),
                      const Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 45,
                  height: 45,
                  child: const Icon(Icons.search, color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor,
                  ),
                ),
              )
            ],
          ),
        ),
        //showing body
        const FoodPageBody(),
      ],
    ));
  }
}
