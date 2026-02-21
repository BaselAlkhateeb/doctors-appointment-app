// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValidationState {

 String get email; String get password; PasswordValidationModel get passwordValidationModel; bool get isEmailValid; bool get isPasswordValid;
/// Create a copy of ValidationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationStateCopyWith<ValidationState> get copyWith => _$ValidationStateCopyWithImpl<ValidationState>(this as ValidationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordValidationModel, passwordValidationModel) || other.passwordValidationModel == passwordValidationModel)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,passwordValidationModel,isEmailValid,isPasswordValid);

@override
String toString() {
  return 'ValidationState(email: $email, password: $password, passwordValidationModel: $passwordValidationModel, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid)';
}


}

/// @nodoc
abstract mixin class $ValidationStateCopyWith<$Res>  {
  factory $ValidationStateCopyWith(ValidationState value, $Res Function(ValidationState) _then) = _$ValidationStateCopyWithImpl;
@useResult
$Res call({
 String email, String password, PasswordValidationModel passwordValidationModel, bool isEmailValid, bool isPasswordValid
});




}
/// @nodoc
class _$ValidationStateCopyWithImpl<$Res>
    implements $ValidationStateCopyWith<$Res> {
  _$ValidationStateCopyWithImpl(this._self, this._then);

  final ValidationState _self;
  final $Res Function(ValidationState) _then;

/// Create a copy of ValidationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? passwordValidationModel = null,Object? isEmailValid = null,Object? isPasswordValid = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordValidationModel: null == passwordValidationModel ? _self.passwordValidationModel : passwordValidationModel // ignore: cast_nullable_to_non_nullable
as PasswordValidationModel,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ValidationState].
extension ValidationStatePatterns on ValidationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidationState value)  $default,){
final _that = this;
switch (_that) {
case _ValidationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidationState value)?  $default,){
final _that = this;
switch (_that) {
case _ValidationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  PasswordValidationModel passwordValidationModel,  bool isEmailValid,  bool isPasswordValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidationState() when $default != null:
return $default(_that.email,_that.password,_that.passwordValidationModel,_that.isEmailValid,_that.isPasswordValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  PasswordValidationModel passwordValidationModel,  bool isEmailValid,  bool isPasswordValid)  $default,) {final _that = this;
switch (_that) {
case _ValidationState():
return $default(_that.email,_that.password,_that.passwordValidationModel,_that.isEmailValid,_that.isPasswordValid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  PasswordValidationModel passwordValidationModel,  bool isEmailValid,  bool isPasswordValid)?  $default,) {final _that = this;
switch (_that) {
case _ValidationState() when $default != null:
return $default(_that.email,_that.password,_that.passwordValidationModel,_that.isEmailValid,_that.isPasswordValid);case _:
  return null;

}
}

}

/// @nodoc


class _ValidationState implements ValidationState {
  const _ValidationState({this.email = '', this.password = '', this.passwordValidationModel = const PasswordValidationModel(), this.isEmailValid = false, this.isPasswordValid = false});
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  PasswordValidationModel passwordValidationModel;
@override@JsonKey() final  bool isEmailValid;
@override@JsonKey() final  bool isPasswordValid;

/// Create a copy of ValidationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidationStateCopyWith<_ValidationState> get copyWith => __$ValidationStateCopyWithImpl<_ValidationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidationState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordValidationModel, passwordValidationModel) || other.passwordValidationModel == passwordValidationModel)&&(identical(other.isEmailValid, isEmailValid) || other.isEmailValid == isEmailValid)&&(identical(other.isPasswordValid, isPasswordValid) || other.isPasswordValid == isPasswordValid));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,passwordValidationModel,isEmailValid,isPasswordValid);

@override
String toString() {
  return 'ValidationState(email: $email, password: $password, passwordValidationModel: $passwordValidationModel, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid)';
}


}

/// @nodoc
abstract mixin class _$ValidationStateCopyWith<$Res> implements $ValidationStateCopyWith<$Res> {
  factory _$ValidationStateCopyWith(_ValidationState value, $Res Function(_ValidationState) _then) = __$ValidationStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, PasswordValidationModel passwordValidationModel, bool isEmailValid, bool isPasswordValid
});




}
/// @nodoc
class __$ValidationStateCopyWithImpl<$Res>
    implements _$ValidationStateCopyWith<$Res> {
  __$ValidationStateCopyWithImpl(this._self, this._then);

  final _ValidationState _self;
  final $Res Function(_ValidationState) _then;

/// Create a copy of ValidationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? passwordValidationModel = null,Object? isEmailValid = null,Object? isPasswordValid = null,}) {
  return _then(_ValidationState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordValidationModel: null == passwordValidationModel ? _self.passwordValidationModel : passwordValidationModel // ignore: cast_nullable_to_non_nullable
as PasswordValidationModel,isEmailValid: null == isEmailValid ? _self.isEmailValid : isEmailValid // ignore: cast_nullable_to_non_nullable
as bool,isPasswordValid: null == isPasswordValid ? _self.isPasswordValid : isPasswordValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
