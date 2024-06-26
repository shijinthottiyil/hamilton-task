import '../../ui/constants/constants.dart';
import 'package:dio/dio.dart';
import 'app_popups.dart';

class DioExceptionHandler {
  static void dioError(DioExceptionType type) {
    AppPopups.cancelDialog();
    switch (type) {
      case DioExceptionType.connectionTimeout:
        AppPopups.errorSnackbar(
            title: AppTexts.kTitle, message: 'connectionTimeout');
        break;
      case DioExceptionType.sendTimeout:
        AppPopups.errorSnackbar(title: AppTexts.kTitle, message: 'sendTimeout');
        break;
      case DioExceptionType.receiveTimeout:
        AppPopups.errorSnackbar(
            title: AppTexts.kTitle, message: 'receiveTimeout');
        break;
      case DioExceptionType.badCertificate:
        AppPopups.errorSnackbar(
            title: AppTexts.kTitle, message: 'badCertificate');
        break;
      case DioExceptionType.badResponse:
        AppPopups.errorSnackbar(title: AppTexts.kTitle, message: 'badResponse');
        break;
      case DioExceptionType.cancel:
        AppPopups.errorSnackbar(title: AppTexts.kTitle, message: 'cancel');
        break;
      case DioExceptionType.connectionError:
        AppPopups.errorSnackbar(
            title: AppTexts.kTitle, message: 'connectionError');
        break;
      case DioExceptionType.unknown:
        AppPopups.errorSnackbar(title: AppTexts.kTitle, message: 'unknown');
        break;
    }
  }
}
