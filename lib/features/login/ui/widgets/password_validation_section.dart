import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_cubit.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_state.dart';
import 'package:doctors_appointment/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordValidationSection extends StatelessWidget {
  const PasswordValidationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      ValidationCubit,
      ValidationState,
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
