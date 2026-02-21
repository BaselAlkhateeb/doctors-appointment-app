import 'package:doctors_appointment/core/helpers/extentions.dart';
import 'package:doctors_appointment/core/routing/routes_string.dart';
import 'package:doctors_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doctors_appointment/features/login/logic/login_cubit/login_state.dart';
import 'package:doctors_appointment/features/login/ui/widgets/my_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class MyLoginBlocConsumer extends StatelessWidget {
  const MyLoginBlocConsumer({super.key, required this.isFormValid});

  final bool isFormValid;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) {
        state.maybeWhen(
          success: (data) {
            context.pushNamed(RoutesString.homeView);
            showSuccessSnackBar();
          },

          error: (error) => showErrorSnackBar(error),

          orElse: () {},
        );
      },
      buildWhen: (previous, current) =>
          current is Loading || previous is Loading,
      builder: (context, state) {
        final bool isLoading = state is Loading;

        return MyLoginButton(
          isLoading: isLoading,
          isEnabled: isFormValid & !isLoading,
        );
      },
    );
  }

  void showErrorSnackBar(String error) {
    Get.snackbar(
      'Login Failed',
      error,
      backgroundColor: Colors.red.withOpacity(0.2),
    );
  }

  void showSuccessSnackBar() {
    Get.snackbar(
      'success',
      'Logged in successfully',
      backgroundColor: Colors.green.withOpacity(0.2),
    );
  }
}
