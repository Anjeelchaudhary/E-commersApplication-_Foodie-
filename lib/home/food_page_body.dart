//import 'dart:html';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/utils/colors.dart';
import 'package:flutter_ecommers_app/utils/dimensions.dart';
import 'package:flutter_ecommers_app/widgets/big_text.dart';
import 'package:flutter_ecommers_app/widgets/icon_and_text_widget.dart';
import 'package:flutter_ecommers_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageNodyState();
}

class _FoodPageNodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;

  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        //color: Colors.redAccent,
        height: Dimensions.pageView,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      )
    ]);
  }

  Widget _buildPageItem(int index) {
    //Here the transion of the upper slides is given
    Matrix4 matrix = new Matrix4.identity();

    if (index ==
        _currPageValue.floor()) //here this line indicates the diplaying one
    {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    //Logic
    //this section id used for the next slide to make it smoother
    //(index == _currPageValue.floor() + 1) here +1 means for the next slide
    //if there id no slide left in left side or in right side then the page value is zero and if there atleast one then it's value is one

    else if (index ==
        _currPageValue.floor() + 1) //this line is for displaying for second one
    {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    //

    else if (index == _currPageValue.floor() - 1) //this show the previous one
    {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    //In order to make transition effect effective Transform is uesd and it take
    //it takes property here ie. matrix
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/chowmein.png")),
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContiner,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                //here the bottom of the box ie. shadow is created
                //boxdesign

                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0,
                          5)), //here if we use negative sighn it makes change in opposite side
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                ],
                color: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Noodle"),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: AppColors.mainColor,
                                size: 15,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "4.5"),
                          const SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "986"),
                          const SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "Feedbacks"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: AppColors.iconColor1),
                          IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.2 Km",
                              iconColor: AppColors.mainColor),
                          IconAndTextWidget(
                              icon: Icons.access_time_rounded,
                              text: "20min",
                              iconColor: AppColors.iconColor2)
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
