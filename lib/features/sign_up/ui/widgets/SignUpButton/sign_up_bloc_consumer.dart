import 'package:doctors_appointment/core/helpers/extentions.dart';
import 'package:doctors_appointment/core/routing/routes_string.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:doctors_appointment/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:doctors_appointment/features/sign_up/logic/sign_up_cubit/sign_up_state.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/SignUpButton/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SignUpBlocConsumer extends StatelessWidget {
  const SignUpBlocConsumer({required this.isFormValid, super.key});
  final bool isFormValid;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) {
        state.maybeWhen(
          success: (data) {
            context.pushReplacementNamed(RoutesString.loginView);
            showSuccessSnackBar(name: context.read<SignUpValidationCubit>().state.name);
          },

          error: (error) => showErrorSnackBar(error),
          orElse: () {},
        );
      },
      buildWhen: (previous, current) =>
          current is Loading || previous is Loading,
      builder: (context, state) {
        bool isLoading = state is Loading;

        bool isEnabled = isFormValid && !isLoading;

        return SignUpButton(isLoading: isLoading, isEnabled: isEnabled);
      },
    );
  }

  void showErrorSnackBar(String error) {
    Get.snackbar(
      'Sign Up Failed',
      error,
      backgroundColor: Colors.red.withOpacity(0.2),
    );
  }

  void showSuccessSnackBar({required String name}) {
    Get.snackbar(
      'Success',
      'Welcome $name',
      backgroundColor: Colors.green.withOpacity(0.2),
    );
  }
}
