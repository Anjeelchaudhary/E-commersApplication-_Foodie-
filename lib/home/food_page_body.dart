import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageNodyState();
}

class _FoodPageNodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage("assets/image/Sinki.png")),
        borderRadius: BorderRadius.circular(30),
        color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
      ),
    );
  }
}
