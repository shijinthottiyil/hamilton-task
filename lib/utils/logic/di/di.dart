import 'package:get/get.dart';
import 'package:hamilton/features/album/controller/album_controller.dart';
import 'package:hamilton/features/home/controller/home_controller.dart';
import 'package:hamilton/features/photo/controller/photo_controller.dart';

class DI implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(AlbumController());
    Get.put(PhotoController());
  }
}
