
import 'package:doctors_appointment/features/login/data/models/password_validation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'validation_state.freezed.dart';

@freezed
 abstract class  ValidationState with _$ValidationState {
  const factory ValidationState({
    @Default('') String email,
    @Default('') String password,
    @Default(PasswordValidationModel())
    PasswordValidationModel passwordValidationModel,
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,

  }) = _ValidationState;
}
