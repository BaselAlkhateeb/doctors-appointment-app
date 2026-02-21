import 'package:doctors_appointment/core/helpers/spacing.dart';
import 'package:doctors_appointment/core/theme/colors_maneger.dart';
import 'package:doctors_appointment/core/theme/text_styles.dart';
import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations({super.key, required this.passwordValidationModel});
  final PasswordValidationModel passwordValidationModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          'At least 1 lowercase letter',
          passwordValidationModel.hasLowerCase,
        ),
        buildValidationRow(
          'At least 1 upercase letter',
          passwordValidationModel.hasUpperCase,
        ),
        buildValidationRow(
          'At least 1 special character',
          passwordValidationModel.hasSpecialCharacter,
        ),
        buildValidationRow(
          'At least 1 number',
          passwordValidationModel.hasNumber,
        ),
        buildValidationRow(
          'At least 8 characters long',
          passwordValidationModel.hasMinLength,
        ),
      ],
    );
  }

  Widget buildValidationRow(String text, bool isValid) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 3.5,
            backgroundColor: isValid ? Colors.green : ColorsManeger.grey,
          ),
          horizantalSpace(10),
          Text(
            text,
            style: TextStyles.font13darkBlueMedium.copyWith(
              color: isValid ? Colors.green : ColorsManeger.grey,
              decoration: isValid ? TextDecoration.underline : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
            ),
          ),
          horizantalSpace(10),
          if (isValid == true) Icon(Icons.check, color: Colors.green),
        ],
      ),
    );
  }
}
