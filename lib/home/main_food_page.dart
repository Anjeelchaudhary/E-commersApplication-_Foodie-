import 'package:flutter/cupertino.dart';

abstract class MainFoodPageState extends StatefulWidget {
  const MainFoodPageState({Key? key}) : super(key: key);

  @override
  State<MainFoodPageState> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
