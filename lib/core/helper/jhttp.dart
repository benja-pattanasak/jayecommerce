import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jayecommerce/config/app_setting.dart';

class Jhttp {
  static Future<http.Response> post(
      String apiUrl, String token, Object body) async {
    return await http.post(Uri.parse(AppSetting.BaseUrl() + apiUrl),
        headers: {
          'Content-Type': 'application/json',
          //'Authorization': 'Bearer $token',
        },
        //body: jsonEncode('{}'));
        body: json.encode({}) //'{}'
        );
  }

  static Future<http.Response> get(String apiUrl, String token) async {
    return await http.get(Uri.parse(AppSetting.BaseUrl() + apiUrl), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    });
  }

  static Future<http.Response> put(
      String apiUrl, String token, String jsonModel) async {
    return await http.put(Uri.parse(AppSetting.BaseUrl() + apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(jsonModel));
  }

  static Future<http.Response> delete(
      String apiUrl, String token, String jsonModel) async {
    return await http.delete(Uri.parse(AppSetting.BaseUrl() + apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(jsonModel));
  }
}
