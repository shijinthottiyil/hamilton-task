import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/home/model/home.dart';
import 'package:hamilton/features/home/model/user_model.dart';
import 'package:hamilton/utils/logic/networking/app_popups.dart';
import 'package:hamilton/utils/logic/networking/app_repository.dart';
import 'package:hamilton/utils/logic/networking/app_urls.dart';
import 'package:hamilton/utils/logic/networking/dio_exception_handler.dart';
import 'package:hamilton/utils/ui/constants/app_texts.dart';

class HomeController extends GetxController {
  Home home = Home();

  // method: get Users List.
  Future<void> getUsersList() async {
    try {
      AppPopups.showDialog();
      home.userModelList.clear();
      var response = await AppRepository.getResponse(endPoint: AppUrls.kUsers);
      List responseList = response.data;

      for (var i = 0; i < responseList.length; i++) {
        var json = responseList[i];
        home.userModelList.add(UserModel.fromJson(json));
      }
      AppPopups.cancelDialog();
    } on DioException catch (dioError) {
      DioExceptionHandler.dioError(dioError.type);
    } catch (error) {
      AppPopups.cancelDialog();
      AppPopups.errorSnackbar(
          title: AppTexts.kTitle, message: 'HomeController getUsersList catch');
    }
  }
}
