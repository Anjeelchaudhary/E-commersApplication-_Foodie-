import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/utils/dimensions.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.popularFoodImgSize,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/momoo.png"))),
          ),
        ),
        Positioned(
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Row(
            
          ),
        )
      ]),
    );
  }
}
