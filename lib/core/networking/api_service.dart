import 'package:dio/dio.dart';
import 'package:doctors_appointment/core/networking/api_constants.dart';
import 'package:doctors_appointment/features/login/data/models/login_request_body.dart';
import 'package:doctors_appointment/features/login/data/models/login_response_model.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/error_logger.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
 factory ApiService(Dio dio , {String baseUrl} ) = _ApiService;

@POST(ApiConstants.login)
Future<LoginResponseModel> login(@Body() LoginRequestBody loginRequestBody );

 @POST(ApiConstants.signUp)
 Future<SignUpResponseModel> signUp(@Body() SignUpRequestBody signUpRequestBody);
 }