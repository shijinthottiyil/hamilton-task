import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/album/controller/album_controller.dart';
import 'package:hamilton/features/home/model/user_model.dart';
import 'package:hamilton/features/photo/view/photo_view.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({
    super.key,
    required this.userModel,
  });
  final UserModel userModel;

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  final albumController = Get.find<AlbumController>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await albumController.getUserAlbumModel(userId: '${widget.userModel.id}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.userModel.name}'),
      ),
      body: Center(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              Get.to(
                () => PhotoView(
                  albumModel: albumController.album.albumModel.value,
                ),
              );
            },
            child: SizedBox(
              width: 200,
              height: 200,
              child: Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${albumController.album.albumModel.value.title}',
                      style: context.textTheme.labelMedium,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
