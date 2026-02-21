import 'package:doctors_appointment/core/helpers/app_regx.dart';
import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:doctors_appointment/features/login/logic/validation_cubit/validation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ValidationCubit extends Cubit<ValidationState> {
  ValidationCubit() : super(ValidationState());

  void updateEmail(String email) {
    emit(
      state.copyWith(
        email: email,
        isEmailValid: validateEmail(email),
      ),
    );
  }

  void updatePassword(String password) {
    PasswordValidationModel validatedPassword = state.passwordValidationModel
        .copyWith(
          hasLowerCase: AppRegex.hasLowerCase(password),
          hasMinLength: AppRegex.hasMinLength(password),
          hasNumber: AppRegex.hasNumber(password),
          hasSpecialCharacter: AppRegex.hasSpecialCharacter(password),
          hasUpperCase: AppRegex.hasUpperCase(password),
        );

    emit(
      state.copyWith(
        password: password,
        passwordValidationModel: validatedPassword,
        isPasswordValid: validatePassword( password),
      ),
    );
  }

  bool validateEmail(String email) {
    return AppRegex.isEmailValid(email) ;
  }

    bool validatePassword(String password) {
    return AppRegex.isPasswordValid(password) ;
  }

}
