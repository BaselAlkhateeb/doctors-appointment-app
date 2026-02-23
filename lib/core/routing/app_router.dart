import 'package:doctors_appointment/core/di/dependency_injection.dart';
import 'package:doctors_appointment/core/routing/routes_string.dart';
import 'package:doctors_appointment/features/home/ui/home_view.dart';
import 'package:doctors_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_cubit.dart';
import 'package:doctors_appointment/features/login/ui/login_view.dart';
import 'package:doctors_appointment/features/onboarding/ui/onboarding_view.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:doctors_appointment/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:doctors_appointment/features/sign_up/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesString.onboardingView:
        return MaterialPageRoute(builder: (context) => OnboardingView());

      case RoutesString.signupView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<SignUpCubit>(create: (_) => getIt<SignUpCubit>()),
              BlocProvider<SignUpValidationCubit>(
                create: (_) => SignUpValidationCubit(),
              ),
            ],
            child: SignUpView(),
          ),
        );

      case RoutesString.loginView:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider<LoginCubit>(
                create: (BuildContext context) => getIt<LoginCubit>(),
              ),
              BlocProvider<ValidationCubit>(
                create: (BuildContext context) => ValidationCubit(),
              ),
            ],
            child: LoginView(),
          ),
        );

      case RoutesString.homeView:
        return MaterialPageRoute(builder: (context) => HomeView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route difined for ${settings.name}')),
          ),
        );
    }
  }
}
