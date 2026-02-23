import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpEmailTextFormField extends StatelessWidget {
  const SignUpEmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Email',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'email is required';
        } else if (!context
            .read<SignUpValidationCubit>()
            .validateEmail(value)) {
          return 'please enter a valid email';
        }
        return null;
      },
      onChanged: (value) {
        context.read<SignUpValidationCubit>().updateEmail(
          value,
        );
      },
    );
  }
}

