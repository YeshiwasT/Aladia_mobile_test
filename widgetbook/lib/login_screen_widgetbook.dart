import 'package:aladia_mobile/feature/authentication/data/dataSource/authRemoteDatasource.dart';
import 'package:aladia_mobile/feature/authentication/data/repository/authRepositoryImpl.dart';
import 'package:aladia_mobile/feature/authentication/domain/repository/authRepository.dart';
import 'package:aladia_mobile/feature/authentication/domain/usecase/loginUsecase.dart';
import 'package:aladia_mobile/feature/authentication/presentation/bloc/bloc/login_bloc.dart';
import 'package:aladia_mobile/feature/authentication/presentation/screens/loginScreen.dart';
import 'package:aladia_mobile/feature/authentication/presentation/widgets/ButtonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:http/http.dart' as http;

// @widgetbook.UseCase(name: 'Login', type: LoginScreen)
// Widget buildLoginUseCase(BuildContext context) {
//   return LoginScreen();
// }

@widgetbook.UseCase(name: 'Login', type: LoginScreen)
Widget buildLoginUseCase(BuildContext context) {
  final client = http.Client();
  final authenticationRemoteDataSource =
      AuthRemoteDatasourceImpl(client: client);

  final authenticationRepository = Authrepositoryimpl(
      authenticationRemoteDataSource: authenticationRemoteDataSource);
  final loginUseCase =
      LogInUseCase(authenticationRepository: authenticationRepository);

  return BlocProvider(
    create: (context) => LoginBloc(
      logInUseCase: loginUseCase, // Pass the use case here
    ),
    child: const LoginScreen(),
  );
}

// class LoginScreenWidgetbook {
//   // Widgetbook category for Login Screen
//   static WidgetbookCategory get category => WidgetbookCategory(
//         name: 'Screens',
//         children: [
//           WidgetbookComponent(
//             name: 'Login Screen',
//             useCases: [
//               loginUseCase(), // Inject dependencies properly
//             ],
//           ),
//         ],
//       );

//   // Login Use Case for Widgetbook
//   static WidgetbookUseCase loginUseCase() {
//     return WidgetbookUseCase(
//       name: 'Initial State',
//       builder: (context) {
//         // Initialize the dependencies
//         final client = http.Client();
//         final authenticationRemoteDataSource =
//             AuthRemoteDatasourceImpl(client: client);

//         final authenticationRepository = Authrepositoryimpl(
//             authenticationRemoteDataSource: authenticationRemoteDataSource);
//         final loginUseCase =
//             LogInUseCase(authenticationRepository: authenticationRepository);

//         return BlocProvider(
//           create: (context) => LoginBloc(logInUseCase: loginUseCase),
//           child: const LoginScreen(),
//         );
//       },
//     );
//   }
// }
