import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //(height of the device)/(height of the design) = x;
  //844/220=3.84

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContiner = screenHeight / 7.03;

  static double height10 = screenHeight / 8.44;
  static double height20 = screenHeight / 4.22;
}
