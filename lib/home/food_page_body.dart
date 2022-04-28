import 'package:flutter/cupertino.dart';

class FoodPageNody extends StatefulWidget {
  const FoodPageNody({Key? key}) : super(key: key);

  @override
  State<FoodPageNody> createState() => _FoodPageNodyState();
}

class _FoodPageNodyState extends State<FoodPageNody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Color(0xFF69c5df)),
    );
  }
}
