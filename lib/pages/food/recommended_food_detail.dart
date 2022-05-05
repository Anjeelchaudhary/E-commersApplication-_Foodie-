//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/utils/colors.dart';
import 'package:flutter_ecommers_app/utils/dimensions.dart';
import 'package:flutter_ecommers_app/widgets/app_icon.dart';
import 'package:flutter_ecommers_app/widgets/big_text.dart';
import 'package:flutter_ecommers_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Thakali Khana",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yelloColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/ThakaliKhana.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "The Thakalis who are inhabitants of Thak Khola region of Mustang District is home to Thakali cuisine. The Thak-Khola Valley in ancient days used to be an easy trade route through the high Himalayas. And as trade was an important part of the Thakali people, they could import vegetables, and being in the higher Himalayan region most vegetables served were cooked in the dried version.Not to miss that this one cuisine happens to be less vegetarian in nature.A typical serving of Thakali plate would see Dal, Bhaat, Tarkari and Meat (lentil soup, rice, green vegetable) along with Kanchhemba (Buckwheat finger chips) the Mustang Alu topped with Jimbu (Himalayan leaf garlic) and a generous dollop of ghee (clarified butter). Though it’s low on desserts a sweet curd or Phopké (fermented rice) completes the meal. Vivek Sherchan, Owner, Jimbu Thakali by Capital Grill, who himself is a Thakali from Tukche village of Mustang Region says “the style of preparation of Thakali food is different due to the use of some ingredients that are characteristic of Thakali cuisine like Sukuti or dried goat/yak meat, Gundruk (fermented leafy green vegetables) with soybean along with green cabbage, buckwheat, barley flour and timbur, a spicy Himalayan spice. This gives the cuisine a whole new taste and flavour. The thali is not only appealing in taste but also visually with a variety of colours from the pale green dal, green leafy veggies, rich red meat, rice being white along with the chutneys like mula ko achaar (white radish pickle), chap/golbjeda ko chutney (fresh tomato pickle)”.The main meals are always served in a thali and variety is the trademark of thakali dishes. In Thakali homes cooking is done with mustard oil, or fresh ghee while in restaurants some dishes are cooked in Sunflower oil these days. Adding to the same Gauravman Sherchan, renowned photographer and CEO Jimbu Thakali who has many eyes for detail for this cuisine says “the best way to understand Nepal and its people is to take a dig into the Nepali cuisine. The authentic Nepali taste is found in Newari and Thakali cuisines out of which Thakali sees much richness and diversity. The cuisine is heavily influenced by the terrain where the Thakali lives eg- in between the higher Himalayan and low hilly region. Though the flavours are simple, the aroma of ghee in dal (lentil soup) and the distinct taste and smell of timur (zanthoxylum alayum) in curry makes this cuisine unforgettable"),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          padding: EdgeInsets.only(
            left: Dimensions.width20 * 2.5,
            right: Dimensions.width20 * 2.5,
            top: Dimensions.height10,
            bottom: Dimensions.height10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //This is the app icon for the Thakali page food at bottom section
              AppIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove),
              BigText(
                text: "\$12.88" + "X" + "0",
                color: AppColors.mainBlackColor,
                size: Dimensions.font26,
              ),
              AppIcon(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add)
            ],
          ),
        ),
        Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
                child: Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: BigText(
                  text: "\$999 | Add to cart ",
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

 //margin: EdgeInsets.only(
                   // left: Dimensions.width20, right: Dimensions.width20),