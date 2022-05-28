import 'package:get/get.dart';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  //here token is used because when you talk to the server
  //we need to have the token and late key is for
  //having late data transfer while communicating to server
  late String token;
  final String appBaseUrl; //this is server url
  late Map<String, String> _mainHeaders;
  //this is the construtor
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30); // this is the timeout for the  request
  }
}
