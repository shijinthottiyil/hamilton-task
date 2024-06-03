import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/album/model/album.dart';
import 'package:hamilton/features/album/model/album_model.dart';
import 'package:hamilton/utils/logic/networking/app_popups.dart';
import 'package:hamilton/utils/logic/networking/app_repository.dart';
import 'package:hamilton/utils/logic/networking/app_urls.dart';
import 'package:hamilton/utils/logic/networking/dio_exception_handler.dart';
import 'package:hamilton/utils/ui/constants/app_texts.dart';

class AlbumController extends GetxController {
  Album album = Album();

  // METHOD: for get user AlbumModel.
  Future<void> getUserAlbumModel({required String userId}) async {
    try {
      AppPopups.showDialog();

      var response = await AppRepository.getResponse(
          endPoint: '${AppUrls.kAlbums}/$userId');
      album.albumModel.value = AlbumModel.fromJson(response.data);
      AppPopups.cancelDialog();
    } on DioException catch (dioError) {
      DioExceptionHandler.dioError(dioError.type);
    } catch (error) {
      AppPopups.cancelDialog();
      AppPopups.errorSnackbar(
          title: AppTexts.kTitle,
          message: 'AlbumController getUserAlbumModel catch');
    }
  }
}
