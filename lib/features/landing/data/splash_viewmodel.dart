import 'package:chatapp/di/service_locator.dart';
import 'package:chatapp/features/landing/data/remote/splash_remote.dart';
import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  final SplashRemote repository = locator<SplashRemote>();

  Future<void> logout() async {
    repository.logout();
  }

}