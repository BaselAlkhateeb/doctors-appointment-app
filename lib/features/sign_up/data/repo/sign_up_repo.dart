import 'package:doctors_appointment/core/networking/api_error_handler.dart';
import 'package:doctors_appointment/core/networking/api_result.dart';
import 'package:doctors_appointment/core/networking/api_service.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_response_model.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);
  Future<ApiResult<SignUpResponseModel>> signUp(SignUpRequestBody body) async {
    try {
      final data = await _apiService.signUp(body);
      return ApiResult.success(data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
