import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/core/widgets/app_text_button.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_state.dart';
import 'package:doctors_appointment/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.isLoading,
    required this.isEnabled,
  });

  final bool isLoading;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: isLoading ? '' : 'Create Account',
      textStyle: TextStyles.font16WhiteSemiBold,
      backgroundColor: isEnabled
          ? ColorsManeger.primaryColor
          : ColorsManeger.hintColor,
      onPressed: isEnabled
          ? () {
              final s = context
                  .read<SignUpValidationCubit>()
                  .state;
              doSignUp(context, s);
            }
          : null,
      child: isLoading
          ? buildCircularProgressIndecator()
          : null,
    );
  }

  void doSignUp(BuildContext context, SignUpValidationState s) {
          context
        .read<SignUpCubit>()
        .emitSignUpStates(
          SignUpRequestBody(
            name: s.name,
            email: s.email,
            phone: s.phone,
            gender: '0',
            password: s.password,
            passwordConfirmation:
                s.passwordConfirmation,
          ),
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
