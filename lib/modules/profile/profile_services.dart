import 'package:flutter_getx/constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_getx/model/user.dart';

class ProductServices {

  static var client = http.Client();

  static Future<User?> getUser() async {
    var response = await client.get(Uri.parse(ApiConstants.baseUrl + ApiConstants.userEndpoint));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return userFromJson(jsonString);
    } else {
      return null;
    }
  }
}