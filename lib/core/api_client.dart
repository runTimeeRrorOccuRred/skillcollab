// ignore_for_file: avoid_dynamic_calls, constant_identifier_names, deprecated_member_use

import 'dart:developer';

import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/utils/logger.dart';

class ApiClient {
  static const String TOP_HEADLINES = 'top-headlines';

  final Dio dio = Dio();

  ApiClient() {
    // dio.options.baseUrl = Environment.value.baseUrl!;
    dio.options.connectTimeout = const Duration(milliseconds: 20000);
    dio.options.receiveTimeout = const Duration(milliseconds: 20000);
    // if (Environment.value.environmentType != EnvType.PRODUCTION) {
    //   dio.interceptors.add(
    //     PrettyDioLogger(
    //       requestHeader: true,
    //       requestBody: true,
    //       responseHeader: true,
    //       responseBody: false,
    //     ),
    //   );
    // }

    // data.headers['Cookie'] = "jwt=" + AppConstants.AUTH_TOKEN;
  }

  Future<Response<Map<String, dynamic>>> post(
    {String? path,
    dynamic data,}
  ) async {
    try {
      final Response<Map<String, dynamic>> response = await dio.post(path!,
          data: data,
          options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),);
      return response;
    } on DioError catch (e) {
      // if(e.message?.contains("401") ?? false) {
      //   await refreshAuthToken().then((_) => post(path: path, data: data));
      // }
      Logger.printWarning(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data) async {
    try {
      return await dio.put(path, data: data);
    } on DioError catch (e) {
      Logger.printWarning(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(String path) async {
    try {
      return await dio.delete(path, options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),);
    } on DioError catch (e) {
      Logger.printWarning(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> get(String path) async {
    try {
      final Response<Map<String, dynamic>> response = await dio.get(path, options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}));
      return response;
    } on DioError catch (e) {
      Logger.printWarning(e.message.toString());
      // if(e.message?.contains("401") ?? false) {
      //   await refreshAuthToken().then((_) => get(path));
      // }
      throw ApiException(e.response!.data["message"].toString());
    }
  }



    Future<Response<Map<String, dynamic>>> patch(String path,dynamic data) async {
    try {
      return await dio.patch(path,
       data: data,
      
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message.toString());
      throw ApiException(e.response!.data["message"].toString());
    }
  }
}

class MultiPartClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.persistentConnection = false;

    request.headers["Content-Type"] = "application/json";
    log(request.headers.toString());

    log(request.url.toString());
    // Future<http.StreamedResponse> response = _httpClient.send(request);
    // alice.onHttpClientRequest(request.)
    // debugPrint(request.url.toString());
    // alice.onHttpResponse(await http.Response.fromStream(await response));
    return _httpClient.send(request);
  }
}
