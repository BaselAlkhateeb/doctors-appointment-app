// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_validation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpValidationState {

 String get name; String get email; String get phone; String get password; String get passwordConfirmation; PasswordValidationModel get passwordValidationModel; bool get isEmailValid; bool get isPasswordValid; bool get isPhoneValid; bool get isPasswordConfirmationValid; bool get isFormValid;
/// Create a copy of SignUpValidationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpValidationStateCopyWith<SignUpValidationState> get copyWith => _$SignUpValidationStateCopyWithImpl<SignUpValidationState>(this as SignUpValidationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpValidationState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.passwordValidationModel, passwordValidationModel) || other.passwordValidationModel == passwordValidationModel)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid)&&(identical(other.isPhoneValid, isPhoneValid) || other.isPhoneValid == isPhoneValid)&&(identical(other.isPasswordConfirmationValid, isPasswordConfirmationValid) || other.isPasswordConfirmationValid == isPasswordConfirmationValid)&&(identical(other.isFormValid, isFormValid) || other.isFormValid == isFormValid));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phone,password,passwordConfirmation,passwordValidationModel,isEmailValid,isPasswordValid,isPhoneValid,isPasswordConfirmationValid,isFormValid);

@override
String toString() {
  return 'SignUpValidationState(name: $name, email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation, passwordValidationModel: $passwordValidationModel, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isPhoneValid: $isPhoneValid, isPasswordConfirmationValid: $isPasswordConfirmationValid, isFormValid: $isFormValid)';
}


}

/// @nodoc
abstract mixin class $SignUpValidationStateCopyWith<$Res>  {
  factory $SignUpValidationStateCopyWith(SignUpValidationState value, $Res Function(SignUpValidationState) _then) = _$SignUpValidationStateCopyWithImpl;
@useResult
$Res call({
 String name, String email, String phone, String password, String passwordConfirmation, PasswordValidationModel passwordValidationModel, bool isEmailValid, bool isPasswordValid, bool isPhoneValid, bool isPasswordConfirmationValid, bool isFormValid
});




}
/// @nodoc
class _$SignUpValidationStateCopyWithImpl<$Res>
    implements $SignUpValidationStateCopyWith<$Res> {
  _$SignUpValidationStateCopyWithImpl(this._self, this._then);

  final SignUpValidationState _self;
  final $Res Function(SignUpValidationState) _then;

/// Create a copy of SignUpValidationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? phone = null,Object? password = null,Object? passwordConfirmation = null,Object? passwordValidationModel = null,Object? isEmailValid = null,Object? isPasswordValid = null,Object? isPhoneValid = null,Object? isPasswordConfirmationValid = null,Object? isFormValid = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,passwordValidationModel: null == passwordValidationModel ? _self.passwordValidationModel : passwordValidationModel // ignore: cast_nullable_to_non_nullable
as PasswordValidationModel,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,isPhoneValid: null == isPhoneValid ? _self.isPhoneValid : isPhoneValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordConfirmationValid: null == isPasswordConfirmationValid ? _self.isPasswordConfirmationValid : isPasswordConfirmationValid // ignore: cast_nullable_to_non_nullable
as bool,isFormValid: null == isFormValid ? _self.isFormValid : isFormValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpValidationState].
extension SignUpValidationStatePatterns on SignUpValidationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpValidationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpValidationState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpValidationState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpValidationState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpValidationState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpValidationState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String phone,  String password,  String passwordConfirmation,  PasswordValidationModel passwordValidationModel,  bool isEmailValid,  bool isPasswordValid,  bool isPhoneValid,  bool isPasswordConfirmationValid,  bool isFormValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpValidationState() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.password,_that.passwordConfirmation,_that.passwordValidationModel,_that.isEmailValid,_that.isPasswordValid,_that.isPhoneValid,_that.isPasswordConfirmationValid,_that.isFormValid);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String phone,  String password,  String passwordConfirmation,  PasswordValidationModel passwordValidationModel,  bool isEmailValid,  bool isPasswordValid,  bool isPhoneValid,  bool isPasswordConfirmationValid,  bool isFormValid)  $default,) {final _that = this;
switch (_that) {
case _SignUpValidationState():
return $default(_that.name,_that.email,_that.phone,_that.password,_that.passwordConfirmation,_that.passwordValidationModel,_that.isEmailValid,_that.isPasswordValid,_that.isPhoneValid,_that.isPasswordConfirmationValid,_that.isFormValid);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String phone,  String password,  String passwordConfirmation,  PasswordValidationModel passwordValidationModel,  bool isEmailValid,  bool isPasswordValid,  bool isPhoneValid,  bool isPasswordConfirmationValid,  bool isFormValid)?  $default,) {final _that = this;
switch (_that) {
case _SignUpValidationState() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.password,_that.passwordConfirmation,_that.passwordValidationModel,_that.isEmailValid,_that.isPasswordValid,_that.isPhoneValid,_that.isPasswordConfirmationValid,_that.isFormValid);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpValidationState implements SignUpValidationState {
  const _SignUpValidationState({this.name = '', this.email = '', this.phone = '', this.password = '', this.passwordConfirmation = '', this.passwordValidationModel = const PasswordValidationModel(), this.isEmailValid = false, this.isPasswordValid = false, this.isPhoneValid = false, this.isPasswordConfirmationValid = false, this.isFormValid = false});
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String password;
@override@JsonKey() final  String passwordConfirmation;
@override@JsonKey() final  PasswordValidationModel passwordValidationModel;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isPasswordValid;
@override@JsonKey() final  bool isPhoneValid;
@override@JsonKey() final  bool isPasswordConfirmationValid;
@override@JsonKey() final  bool isFormValid;

/// Create a copy of SignUpValidationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpValidationStateCopyWith<_SignUpValidationState> get copyWith => __$SignUpValidationStateCopyWithImpl<_SignUpValidationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpValidationState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.passwordValidationModel, passwordValidationModel) || other.passwordValidationModel == passwordValidationModel)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid)&&(identical(other.isPhoneValid, isPhoneValid) || other.isPhoneValid == isPhoneValid)&&(identical(other.isPasswordConfirmationValid, isPasswordConfirmationValid) || other.isPasswordConfirmationValid == isPasswordConfirmationValid)&&(identical(other.isFormValid, isFormValid) || other.isFormValid == isFormValid));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phone,password,passwordConfirmation,passwordValidationModel,isEmailValid,isPasswordValid,isPhoneValid,isPasswordConfirmationValid,isFormValid);

@override
String toString() {
  return 'SignUpValidationState(name: $name, email: $email, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation, passwordValidationModel: $passwordValidationModel, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isPhoneValid: $isPhoneValid, isPasswordConfirmationValid: $isPasswordConfirmationValid, isFormValid: $isFormValid)';
}


}

/// @nodoc
abstract mixin class _$SignUpValidationStateCopyWith<$Res> implements $SignUpValidationStateCopyWith<$Res> {
  factory _$SignUpValidationStateCopyWith(_SignUpValidationState value, $Res Function(_SignUpValidationState) _then) = __$SignUpValidationStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String phone, String password, String passwordConfirmation, PasswordValidationModel passwordValidationModel, bool isEmailValid, bool isPasswordValid, bool isPhoneValid, bool isPasswordConfirmationValid, bool isFormValid
});




}
/// @nodoc
class __$SignUpValidationStateCopyWithImpl<$Res>
    implements _$SignUpValidationStateCopyWith<$Res> {
  __$SignUpValidationStateCopyWithImpl(this._self, this._then);

  final _SignUpValidationState _self;
  final $Res Function(_SignUpValidationState) _then;

/// Create a copy of SignUpValidationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? phone = null,Object? password = null,Object? passwordConfirmation = null,Object? passwordValidationModel = null,Object? isEmailValid = null,Object? isPasswordValid = null,Object? isPhoneValid = null,Object? isPasswordConfirmationValid = null,Object? isFormValid = null,}) {
  return _then(_SignUpValidationState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,passwordValidationModel: null == passwordValidationModel ? _self.passwordValidationModel : passwordValidationModel // ignore: cast_nullable_to_non_nullable
as PasswordValidationModel,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,isPhoneValid: null == isPhoneValid ? _self.isPhoneValid : isPhoneValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordConfirmationValid: null == isPasswordConfirmationValid ? _self.isPasswordConfirmationValid : isPasswordConfirmationValid // ignore: cast_nullable_to_non_nullable
as bool,isFormValid: null == isFormValid ? _self.isFormValid : isFormValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
