import 'package:chatapp/di/service_locator.dart';
import 'package:chatapp/features/landing/data/remote/splash_remote.dart';
import 'package:chatapp/remote/http_client.dart';
import 'package:chatapp/storage/shared_pref_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class SplashRemoteImpl implements SplashRemote{
  static final ApiClient _apiClient = ApiClient();
  final SharedPrefManager sharedPrefManager = locator<SharedPrefManager>();



  @override
  Future<void> logout() async {

  }
}