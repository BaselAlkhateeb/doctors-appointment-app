import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';
@JsonSerializable()
class LoginResponseModel {
  final String? message;
  final bool? status;
  final int? code;
  @JsonKey(name: 'data')
  final UserData? userData;

  LoginResponseModel({this.message, this.status, this.code, this.userData});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: "username")
  final String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) => 
    _$UserDataFromJson(json);
}
