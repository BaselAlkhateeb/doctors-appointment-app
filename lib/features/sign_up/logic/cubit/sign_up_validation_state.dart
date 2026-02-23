
import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_validation_state.freezed.dart';

@freezed
 abstract class  SignUpValidationState with _$SignUpValidationState {
  const factory SignUpValidationState({
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String password,
    @Default('') String passwordConfirmation,


    @Default(PasswordValidationModel())
    PasswordValidationModel passwordValidationModel,
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,
    @Default(false) bool isPhoneValid,
    @Default(false) bool isPasswordConfirmationValid,
    @Default(false) bool isFormValid,




  }) = _SignUpValidationState;
}
