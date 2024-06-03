import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hamilton/utils/logic/networking/loading_dialog.dart';

class AppPopups {
  static void errorSnackbar({required String title, required String message}) {
    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.redAccent,
    );
  }

  static void infoSnackbar({required String title, required String message}) {
    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
    );
  }

  static void successSnackbar(
      {required String title,
      required String message,
      Duration? duration = const Duration(seconds: 3)}) {
    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
      duration: duration,
      backgroundColor: Colors.green,
    );
  }

  // Loader
  static Future<void> showDialog({bool isDismissible = true}) async {
    await Get.dialog(
      const LoadingDialog(),
      useSafeArea: true,
      barrierDismissible: isDismissible,
    );
  }

  // Cancel Loader
  static void cancelDialog() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }
}
