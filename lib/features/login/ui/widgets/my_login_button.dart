import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/core/widgets/app_text_button.dart';
import 'package:doctors_appointment/features/login/data/models/login_request_body.dart';
import 'package:doctors_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyLoginButton extends StatelessWidget {
  const MyLoginButton({
    super.key,
    required this.isLoading,
    required this.isEnabled,
  });

  final bool isLoading;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: isLoading ? '' : 'Login',
      textStyle: TextStyles.font16WhiteSemiBold,
      backgroundColor: isEnabled
          ? ColorsManeger.primaryColor
          : ColorsManeger.grey,

      onPressed: isEnabled
          ? () {
              final validationState = context.read<ValidationCubit>().state;

              doLogin(context, validationState.email, validationState.password);
            }
          : null,
      child: isLoading ? buildCircularProgressIndecator() : null,
    );
  }

  void doLogin(BuildContext context, String email, String password) {
    context.read<LoginCubit>().emitLoginStates(
      LoginRequestBody(email: email, password: password),
    );
  }

  SizedBox buildCircularProgressIndecator() {
    return SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
    );
  }
}
