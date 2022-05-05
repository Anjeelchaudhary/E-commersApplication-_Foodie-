import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_ecommers_app/utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();

    /*
     Here  first of all it checks the length of the line of code of around one hundred or two hundres 
     it starts checking from 0 word 
     */
    if (widget.text.length > textHeight) {
      //here first showing part is kept in firstHalf and rest of the code which is hidden is passes to second half
      //
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
