import 'package:dio/dio.dart';
import 'package:doctors_appointment/core/networking/api_service.dart';
import 'package:doctors_appointment/core/networking/dio_factory.dart';
import 'package:doctors_appointment/features/login/data/repo/login_repo.dart';
import 'package:doctors_appointment/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doctors_appointment/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctors_appointment/features/sign_up/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //dio & api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  //signUp
  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(getIt<ApiService>()),
  );
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(getIt<SignUpRepo>()),
  );
}
