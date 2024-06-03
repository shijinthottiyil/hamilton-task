import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hamilton/utils/ui/constants/app_assets.dart';
import 'package:lottie/lottie.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Center(
          child: Lottie.asset(
            AppAssets.kCircularProgressLoaderLottie,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
