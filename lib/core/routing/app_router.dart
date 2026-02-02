import 'package:doctors_appointment/core/routing/routes_string.dart';
import 'package:doctors_appointment/features/login/ui/login_view.dart';
import 'package:doctors_appointment/features/onboarding/ui/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesString.onboardingView:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      case RoutesString.loginView:
        return MaterialPageRoute(builder: (context) => LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route difined for ${settings.name}')),
          ),
        );
    }
  }
}
