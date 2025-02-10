import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jayecommerce/config/app_setting.dart';

class Jhttp {
  static Future<http.Response> Post(
      String apiUrl, String token, String jsonModel) async {
    return await http.post(Uri.parse(AppSetting.BaseUrl() + apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(jsonModel));
  }

  static Future<http.Response> Get(String apiUrl, String token) async {
    return await http.get(Uri.parse(AppSetting.BaseUrl() + apiUrl), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });
  }
}
