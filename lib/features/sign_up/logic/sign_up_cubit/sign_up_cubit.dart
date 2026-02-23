import 'package:doctors_appointment/core/networking/api_result.dart';
import 'package:doctors_appointment/features/login/data/models/login_response_model.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctors_appointment/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:doctors_appointment/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctors_appointment/features/sign_up/logic/sign_up_cubit/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());
  final SignUpRepo _signUpRepo;

  void emitSignUpStates(SignUpRequestBody body) async {
    emit(SignUpState.loading());
    final ApiResult<SignUpResponseModel> date = await _signUpRepo.signUp(body);
    date.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (error) {
        emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
