import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_cubit.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_state.dart';
import 'package:doctors_appointment/features/login/ui/widgets/my_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ValidationCubit, ValidationState, bool>(
      selector: (state) {
        return state.isEmailValid&& state.isPasswordValid;
      },
      builder: (context, isFormValid) {
        return MyLoginBlocConsumer(
          isFormValid: isFormValid,
        );
      },
    );
  }
}

