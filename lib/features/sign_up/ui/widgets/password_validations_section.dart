import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:doctors_appointment/features/login/ui/widgets/password_validations.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPasswordValidationsSection extends StatelessWidget {
  const SignUpPasswordValidationsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      SignUpValidationCubit,
      SignUpValidationState,
      PasswordValidationModel
    >(
      selector: (state) {
        return state.passwordValidationModel;
      },
      builder: (context, model) {
        return PasswordValidations(
          passwordValidationModel: model,
        );
      },
    );
  }
}
