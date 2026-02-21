class PasswordValidationModel {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidationModel({
    this.hasLowerCase = false,
    this.hasUpperCase = false,
    this.hasSpecialCharacter = false,
    this.hasNumber = false,
    this.hasMinLength = false,
  });

  PasswordValidationModel copyWith({
    bool? hasLowerCase,
    bool? hasUpperCase,
    bool? hasSpecialCharacter,
    bool? hasNumber,
    bool? hasMinLength,
  }) {
    return PasswordValidationModel(
      hasLowerCase: hasLowerCase ?? this.hasLowerCase,
      hasUpperCase: hasUpperCase ?? this.hasUpperCase,
      hasSpecialCharacter:
          hasSpecialCharacter ?? this.hasSpecialCharacter,
      hasNumber: hasNumber ?? this.hasNumber,
      hasMinLength: hasMinLength ?? this.hasMinLength,
    );
  }
}
