//Network calls will happen through this file
//We need  to make  this as singleton class
// Object is created through constructor , in every constructor call ,new object is created
// Default we can return from constructor

import 'package:dio/dio.dart';
import 'package:doc_plus_admin/src/core/helpers/authentication_helpers.dart';
import 'package:doc_plus_admin/src/core/models/response_model.dart';

class ApiHelper {
  static final ApiHelper _instance = ApiHelper._internal();

  factory ApiHelper() => _instance;

  ApiHelper._internal(); // named constructor  // it returns an object of ApiHelper

  //  new Dio with a BaseOptions instance.
  static final options = BaseOptions(
    baseUrl: 'http://15.206.27.26/',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio = Dio(options);

  Future<ResponseModel> sendGetRequest(String endpoint,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    try {
      Map<String,dynamic> mHeaders= {};
      if(headers !=null){
        mHeaders.addAll(headers);
      }
      mHeaders.addAll(await getAuthHead());
      Response response = await dio.get(endpoint,
          queryParameters: query,
          options: Options(
             headers: mHeaders,
              responseType: ResponseType.json,
              contentType: "application/json"));
      ResponseModel responseModel = ResponseModel.fromJson(response.data);
      return responseModel;
      // if(response.statusCode== 200) {
      //   ResponseModel responseModel = ResponseModel(
      //       status: true, data: response.data);
      //   return responseModel;
      // }
      // else{
      //   ResponseModel responseModel = ResponseModel(
      //       status: false, error: "something went wrong");
      //   return responseModel;
      // }
    } catch (ex) {
      return ResponseModel(status: false, error: "Something went wrong");
    }
  }

  Future<ResponseModel> sendPostRequest(String endpoint, dynamic body,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    try {
      Map<String,dynamic> mHeaders= {};
      if(headers !=null){
        mHeaders.addAll(headers);
      }
      mHeaders.addAll(await getAuthHead());
      Response response = await dio.post(endpoint,
          data: body,
          queryParameters: query,
          options: Options(
            headers: mHeaders,
              responseType: ResponseType.json,
              contentType: "application/json"));
      ResponseModel responseModel = ResponseModel.fromJson(response.data);
      return responseModel;
    } catch (ex) {
      return ResponseModel(status: false, error: "Something went wrong");
    }
  }

  Future<ResponseModel> sendPatchRequest(String endpoint, dynamic body,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    try {
      Map<String,dynamic> mHeaders= {};
      if(headers !=null){
        mHeaders.addAll(headers);
      }
      mHeaders.addAll(await getAuthHead());
      Response response = await dio.patch(endpoint,
          data: body,
          queryParameters: query,
          options: Options(
            headers: mHeaders,
              responseType: ResponseType.json,
              contentType: "application/json"));
      ResponseModel responseModel = ResponseModel.fromJson(response.data);
      return responseModel;
    } catch (ex) {
      return ResponseModel(status: false, error: "Something went wrong");
    }
  }

  Future<ResponseModel> sendDeleteRequest(String endpoint,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    try {
      Map<String,dynamic> mHeaders= {};
      if(headers !=null){
        mHeaders.addAll(headers);
      }
      mHeaders.addAll(await getAuthHead());
      Response response = await dio.delete(endpoint,
          queryParameters: query,
          options: Options(
            headers: mHeaders,
              responseType: ResponseType.json,
              contentType: "application/json"));
      ResponseModel responseModel = ResponseModel.fromJson(response.data);
      return responseModel;
    } catch (ex) {
      return ResponseModel(status: false, error: "Something went wrong");
    }
  }

  Future<dynamic> getAuthHead() async {
    String? tokenId = await AuthenticationHelper().getUserTokenId();
    if (tokenId == null || tokenId.isEmpty) {
      return null;
    }
    return {"Authorization": "Bearer $tokenId"};
  }
}
