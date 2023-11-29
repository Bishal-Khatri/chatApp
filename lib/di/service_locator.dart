import 'package:chatapp/features/landing/data/remote/splash_remote.dart';
import 'package:chatapp/features/landing/data/remote/splash_remote_impl.dart';
import 'package:chatapp/features/landing/data/splash_viewmodel.dart';
import 'package:chatapp/remote/http_client.dart';
import 'package:chatapp/storage/shared_pref_manager.dart';
import 'package:get_it/get_it.dart';


GetIt locator = GetIt.instance;

Future setUpServiceLocator() async {
  var sharedPrefManager = await SharedPrefManager.getInstance();
  locator.registerLazySingleton<SharedPrefManager>(() => sharedPrefManager);
  locator.registerLazySingleton(() => ApiClient());

  locator.registerLazySingleton<SplashRemote>(() => SplashRemoteImpl());

  locator.registerFactory<SplashViewModel>(() => SplashViewModel());
}
