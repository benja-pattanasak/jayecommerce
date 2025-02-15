import 'dart:convert';

import 'package:jayecommerce/core/helper/apiresponse.dart';
import 'package:jayecommerce/core/helper/jhttp.dart';
import 'package:jayecommerce/data/model/Login_model.dart';
import 'package:jayecommerce/data/model/authenticateuser_model.dart';

abstract class LoginRepositoryAbstract {
  Future<ApiResponse<AuthenticateUserModel>> login(LoginModel loginModel);
}

// {
//   "password": "string",
//   "email": "string",
//   "confirmEmail": "string"
// }
class LoginRepository implements LoginRepositoryAbstract {
  @override
  Future<ApiResponse<AuthenticateUserModel>> login(
      LoginModel loginModel) async {
    ApiResponse<AuthenticateUserModel> apiResponse =
        ApiResponse<AuthenticateUserModel>();
    var response =
        await Jhttp.post('/api/v1/authen/login', "", loginModel.toJson());
    try {
      if (response.statusCode == 200) {
        apiResponse.data =
            (jsonDecode(response.body)['data']) as AuthenticateUserModel;
      } else {
        apiResponse.data = AuthenticateUserModel();
        // apiResponse.errorMessage =
        //     Exception.getErrorMessage(statusCode: response.statusCode);
      }
      if (apiResponse.data.accessToken == "") {
        // response.statusCode = 2000;
        // apiResponse.errorMessage =
        //     Exception.getErrorMessage(statusCode: response.statusCode);
      }
    } catch (ex) {
//response.statusCode = 1000;
      // apiResponse.errorMessage = Exception.getErrorMessage(
      //     statusCode: response.statusCode, errorMessage: ex.toString());
    }
    return apiResponse;
  }
}
