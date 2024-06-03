import 'package:dio/dio.dart';
import 'package:hamilton/utils/logic/networking/dio_client.dart';
import 'package:hamilton/utils/logic/networking/logger.dart';

class AppRepository {
  // private Constructor.
  AppRepository._();

  // method to get request data by providing the base url.
  static Future<Response> getResponse({required String endPoint}) async {
    final response = await DioClient.dio.get(endPoint);
    logger.i(response.data,
        error: 'AppRepository getResponse $endPoint response ');
    return response;
  }
}
