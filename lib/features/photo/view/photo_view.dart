import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/album/model/album_model.dart';
import 'package:hamilton/features/photo/controller/photo_controller.dart';
import 'package:hamilton/features/photo/view/widgets/image_loader_widget.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key, required this.albumModel});
  final AlbumModel albumModel;

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  final photoController = Get.find<PhotoController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await photoController.getPhotoModel(userId: '${widget.albumModel.id}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.albumModel.title}'),
      ),
      body: Center(
        child: Obx(
          () => ImageLoaderWidget(
            imageUrl: '${photoController.photo.photoModel.value.thumbnailUrl}',
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
