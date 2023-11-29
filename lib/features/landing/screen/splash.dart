// import 'package:chatapp/di/service_locator.dart';
// import 'package:chatapp/features/landing/data/splash_viewmodel.dart';
import 'package:chatapp/di/service_locator.dart';
import 'package:chatapp/features/landing/data/splash_viewmodel.dart';
import 'package:chatapp/utils/app_layout.dart';
import 'package:chatapp/utils/app_styles.dart';
import 'package:chatapp/utils/image_constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashViewModel viewModel = locator<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: AppLayout.getScreenWidth(),
          height: AppLayout.getScreenHeight(),
          color: Styles.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(140),
            child: Image.asset(
              ImageConstants.APP_LOGO,
              width: 200,
              height: 200,
            ),
          )
      ),
    );
  }
}
