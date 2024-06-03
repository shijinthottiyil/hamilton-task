import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/photo/model/photo.dart';
import 'package:hamilton/features/photo/model/photo_model.dart';
import 'package:hamilton/utils/logic/networking/app_popups.dart';
import 'package:hamilton/utils/logic/networking/app_repository.dart';
import 'package:hamilton/utils/logic/networking/app_urls.dart';
import 'package:hamilton/utils/logic/networking/dio_exception_handler.dart';
import 'package:hamilton/utils/ui/constants/app_texts.dart';

class PhotoController extends GetxController {
  Photo photo = Photo();

  // METHOD: for getting PhotoModel of the corresponding id;
  Future<void> getPhotoModel({required String userId}) async {
    try {
      AppPopups.showDialog();

      var response = await AppRepository.getResponse(
          endPoint: '${AppUrls.kPhotos}/$userId');
      photo.photoModel.value = PhotoModel.fromJson(response.data);
      AppPopups.cancelDialog();
    } on DioException catch (dioError) {
      DioExceptionHandler.dioError(dioError.type);
    } catch (error) {
      AppPopups.cancelDialog();
      AppPopups.errorSnackbar(
          title: AppTexts.kTitle,
          message: 'PhotoController getPhotoModel catch');
    }
  }
}
