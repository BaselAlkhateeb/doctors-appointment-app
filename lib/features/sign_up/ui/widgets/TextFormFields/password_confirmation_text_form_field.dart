import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordConfirmationTextFormField extends StatelessWidget {
  PasswordConfirmationTextFormField({super.key});
  final ValueNotifier<bool> isObscureNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isObscureNotifier,
      builder: (context, isObscure, child) {
        return AppTextFormField(
          hintText: 'Password Confirmation',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Password Confirmition is required';
            } else if (!context
                .read<SignUpValidationCubit>()
                .validatePasswordConfirmition(
                  value,
                  context.read<SignUpValidationCubit>().state.password,
                )) {
              return "passwords doesn't match";
            }
            return null;
          },
          onChanged: (value) {
            context.read<SignUpValidationCubit>().updatePasswordConfirmation(
              value,
            );
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
