import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'core/app_themes/theme_bloc/theme_bloc.dart';
import 'feature/authentication/data/dataSource/authRemoteDatasource.dart';
import 'feature/authentication/data/repository/authRepositoryImpl.dart';
import 'feature/authentication/domain/repository/authRepository.dart';
import 'feature/authentication/domain/usecase/loginUsecase.dart';
import 'feature/authentication/presentation/bloc/bloc/login_bloc.dart';

final serviceLocator = GetIt.instance;
Future<void> init() async {
  //  login
  serviceLocator
      .registerFactory(() => LoginBloc(logInUseCase: serviceLocator()));
  serviceLocator.registerLazySingleton(
      () => LogInUseCase(authenticationRepository: serviceLocator()));
  serviceLocator.registerLazySingleton<AuthRepository>(() =>
      Authrepositoryimpl(authenticationRemoteDataSource: serviceLocator()));
  serviceLocator.registerLazySingleton<AuthRemoteDatasource>(
      () => AuthRemoteDatasourceImpl(client: serviceLocator()));
  serviceLocator.registerLazySingleton(() => http.Client());

  //theme
  serviceLocator.registerFactory(() => ThemeBloc());
  serviceLocator.registerLazySingleton(() => SharedPreferences.getInstance());
}
