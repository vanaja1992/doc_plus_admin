import 'dart:async';

import 'package:doc_plus_admin/src/core/assets/app_assets.dart';
import 'package:doc_plus_admin/src/core/constants/app_colors.dart';
import 'package:doc_plus_admin/src/core/constants/app_dimen.dart';
import 'package:doc_plus_admin/src/features/authentication/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 8),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: AppDimen.appImageAlignTop2),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AppAssets.splashImage,
                  height: AppDimen.appImageSplashheight,
                  width: AppDimen.appImageSplashwidth,
                ),
              ),
              //Animation//
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Lottie.asset(AppAssets.loadingAnimation,
                        width: 100, height: 70, fit: BoxFit.fill)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
