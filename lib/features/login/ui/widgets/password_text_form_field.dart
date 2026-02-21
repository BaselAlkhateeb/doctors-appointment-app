import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordTextFormField extends StatelessWidget {
  PasswordTextFormField({super.key});

  final ValueNotifier<bool> isObscureNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isObscureNotifier,
      builder: (context, isObscure, child) {
        return AppTextFormField(
          onChanged: (value) {
            context.read<ValidationCubit>().updatePassword(value);
          },
          hintText: 'Password',

          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'password is required';
            } else if (!context.read<ValidationCubit>().validatePassword(
              value,
            )) {
              return 'please enter a valid password';
            }
            return null;
          },
          isObscure: isObscure,
          suffixIcon: IconButton(
            onPressed: () {
              isObscureNotifier.value = !isObscureNotifier.value;
            },
            icon: Icon(
              isObscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
        );
      },
    );
  }
}
