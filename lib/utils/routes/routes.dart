import 'package:chatapp/features/authentication/screens/login.dart';
import 'package:chatapp/features/landing/screen/home.dart';
import 'package:chatapp/features/landing/screen/splash.dart';
import 'package:chatapp/utils/routes/route_name.dart';
import 'package:flutter/material.dart';

class Routes{

  static MaterialPageRoute generateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No routes defined.'),
            ),
          );
        });
    }
  }
}