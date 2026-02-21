import 'package:doctors_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
   
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
    
      onChanged: (value) {
        context.read<ValidationCubit>().updateEmail(value);
      },
      hintText: 'Email',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'email is required';
        }
        else if(!context.read<ValidationCubit>().validateEmail(value)){
          return 'please enter a valid email';
        }
        return null;
      },
    );
  }
}