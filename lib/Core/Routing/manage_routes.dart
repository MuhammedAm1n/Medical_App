import 'package:flutter/material.dart';
import 'package:the_doctors/Core/Routing/routes.dart';
import 'package:the_doctors/Features/Home/Ui/login_screen.dart';
import 'package:the_doctors/Features/on_boarding/on_boardingscreen.dart';

class ManageRoutes {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const onBoarding());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('NO routes define'),
                  ),
                ));
    }
  }
}
