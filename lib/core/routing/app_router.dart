import 'package:advanced_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/screens/login_screen.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
      Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
   
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen()); 
      default:

    } return MaterialPageRoute(
            builder: (_) =>  Scaffold(
              body: Center(child: Text("no route defined for ${settings.name}"),),
            )); 
  }
}