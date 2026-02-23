import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response_model.g.dart';
@JsonSerializable()
class SignUpResponseModel {
  final String? message;
  final bool? status;
  final int? code;
  @JsonKey(name: 'data')
  final UserData? userData;

  SignUpResponseModel({this.message, this.status, this.code, this.userData});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
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
