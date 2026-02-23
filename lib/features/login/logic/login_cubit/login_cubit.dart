import 'package:doctors_appointment/core/networking/api_result.dart';
import 'package:doctors_appointment/features/login/data/models/login_request_body.dart';
import 'package:doctors_appointment/features/login/data/repo/login_repo.dart';
import 'package:doctors_appointment/features/login/logic/login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  final LoginRepo _loginRepo;


  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final data = await _loginRepo.login(loginRequestBody);
    data.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
