import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Name',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'name is required';
        }
        return null;
      },
      onChanged: (value) {
        context.read<SignUpValidationCubit>().updateName(
          value,
        );
      },
    );
  }
}
