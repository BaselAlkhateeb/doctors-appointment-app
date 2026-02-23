import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_state.dart';
import 'package:doctors_appointment/features/sign_up/ui/widgets/SignUpButton/sign_up_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButtonSection extends StatelessWidget {
  const SignUpButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      SignUpValidationCubit,
      SignUpValidationState,
      bool
    >(
      selector: (state) {
        return state.isFormValid;
      },
      builder: (context, isFormValid) {
        return SignUpBlocConsumer(isFormValid:  isFormValid,);
      },
    );
  }
}

