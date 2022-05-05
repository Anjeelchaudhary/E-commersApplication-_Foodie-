import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/utils/colors.dart';
import 'package:flutter_ecommers_app/utils/dimensions.dart';
import 'package:flutter_ecommers_app/widgets/big_text.dart';
import 'package:flutter_ecommers_app/widgets/icon_and_text_widget.dart';
import 'package:flutter_ecommers_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: "Noodle"),
        SizedBox(
          height: Dimensions.height10,
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
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "986"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "Feedbacks"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        //this is for the design ie normal,distance and for time
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
      ],
    );
  }
}
