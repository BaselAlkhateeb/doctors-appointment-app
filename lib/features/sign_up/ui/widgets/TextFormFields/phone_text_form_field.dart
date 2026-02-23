import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Phone number',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'phone number is required';
        } else if (!context
            .read<SignUpValidationCubit>()
            .validatePhone(value)) {
          return 'phone number must be 07XXXXXXXX';
        }
        return null;
      },
      onChanged: (value) {
        context.read<SignUpValidationCubit>().updatePhone(
          value,
        );
      },
    );
  }
}

