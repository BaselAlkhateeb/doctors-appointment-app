import 'package:doctors_appointment/core/helpers/app_regx.dart';
import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:doctors_appointment/features/sign_up/logic/cubit/sign_up_validation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpValidationCubit extends Cubit<SignUpValidationState> {
  SignUpValidationCubit() : super(SignUpValidationState());

  void updateEmail(String email) {
    final myState = state.copyWith(
      email: email,
      isEmailValid: validateEmail(email),
    );
    _emitWithFormValidation(myState);
  }

  void updateName(String name) {
    final myState = state.copyWith(name: name);
    _emitWithFormValidation(myState);
  }

  void updatePhone(String phone) {
    final myState = state.copyWith(
      phone: phone,
      isPhoneValid: validatePhone(phone),
    );
    _emitWithFormValidation(myState);
  }

  void updatePasswordConfirmation(String passwordConfirmation) {
    final confirmationValid = validatePasswordConfirmition(
      passwordConfirmation,
      state.password,
    );
    final myState = state.copyWith(
      passwordConfirmation: passwordConfirmation,
      isPasswordConfirmationValid: confirmationValid,
    );
    _emitWithFormValidation(myState);
  }

  void updatePassword(String password) {
    PasswordValidationModel validatedPassword = PasswordValidationModel(
      hasLowerCase: AppRegex.hasLowerCase(password),
      hasMinLength: AppRegex.hasMinLength(password),
      hasNumber: AppRegex.hasNumber(password),
      hasSpecialCharacter: AppRegex.hasSpecialCharacter(password),
      hasUpperCase: AppRegex.hasUpperCase(password),
    );
    final confirmationValid = validatePasswordConfirmition(
      state.passwordConfirmation,
      password,
    );
    final myState = state.copyWith(
      password: password,
      passwordValidationModel: validatedPassword,
      isPasswordValid: validatePassword(password),
      isPasswordConfirmationValid: confirmationValid,
    );
    _emitWithFormValidation(myState);
  }

  bool validateEmail(String email) {
    return AppRegex.isEmailValid(email);
  }

  bool validatePassword(String password) {
    return AppRegex.isPasswordValid(password);
  }

  bool validatePhone(String phone) {
    return AppRegex.isPhoneNumberValid(phone);
  }

  bool validatePasswordConfirmition(
    String passwordConfirmation,
    String password,
  ) {
    return passwordConfirmation == password;
  }

  bool validateForm(SignUpValidationState s) {
    return s.isPhoneValid &&
        s.isEmailValid &&
        s.isPasswordValid &&
        s.isPasswordConfirmationValid;
  }

  void _emitWithFormValidation(SignUpValidationState newState) {
    emit(newState.copyWith(isFormValid: validateForm(newState)));
  }
}
