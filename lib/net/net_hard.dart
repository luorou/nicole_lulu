import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:nicolelulu/config/comm_config.dart';

class NetHard {
  static Dio dioInstance;

  static Future postRequest(method, {formData}) async {
    Dio dio = getDioInstance();
    Response response = await dio.post("", data: formData);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(response.statusMessage);
    }
  }

  static Future getRequest(method, {queryParameters}) async {
    Dio dio = getDioInstance();
    Response response = await dio.get(method, queryParameters: queryParameters);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(response.statusMessage);
    }
  }

  //单例
  static Dio getDioInstance() {
    if (dioInstance == null) {
      dioInstance = Dio(BaseOptions(
        baseUrl: CommConfig.baseUrl,
        connectTimeout: 45000,
        receiveTimeout: 100000,
        headers: {
          "Authorization": CommConfig.appCode,
        },
      ));
      dioInstance.interceptors.add(LogInterceptor(responseBody: true));
    }

    (dioInstance.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      client.findProxy = (uri) {
//      return "PROXY 172.24.5.247:8888";
        return 'DIRECT';
      };
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true; //忽略证书
    };
    return dioInstance;
  }
}
