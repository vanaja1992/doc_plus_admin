import 'dart:convert';

import '../../../core/models/response_model.dart';
import '../../../core/web_service/api_helper/api_helper.dart';
import '../../../core/web_service/api_helper/api_routes.dart';

class AuthenticationRepository {
  Future<ResponseModel> loginUser(String email, String password) async {
    Map<String, dynamic> data = {"email": email, "password": password};
    ResponseModel responseModel = await ApiHelper()
        .sendPostRequest(ApiRoutes.loginRoute, jsonEncode(data));
    return responseModel;
  }
}
