import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamilton/features/album/view/album_view.dart';
import 'package:hamilton/features/home/controller/home_controller.dart';
import 'package:hamilton/utils/ui/constants/app_padding.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.find<HomeController>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await homeController.getUsersList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // AppRepository.getResponse(endPoint: AppUrls.kUsers);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: AppPadding.padSymmetricHorizontal16,
        child: Obx(
          () => ListView.separated(
            itemBuilder: ((context, index) {
              final userData = homeController.home.userModelList[index];
              return ListTile(
                leading: Text(
                  '${index + 1}',
                  style: context.textTheme.bodySmall,
                ),
                title: Text(
                  '${userData.name}',
                ),
                onTap: () {
                  Get.to(
                    () => AlbumView(
                      userModel: userData,
                    ),
                  );
                },
              );
            }),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: homeController.home.userModelList.length,
          ),
        ),
      ),
    );
  }
}
