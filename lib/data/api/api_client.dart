import 'package:get/get.dart';

//everyTime you talk to the server you need to mention the header
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
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
}
