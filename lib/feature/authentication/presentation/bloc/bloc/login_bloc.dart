import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entity/loginEntity.dart';
import '../../../domain/usecase/loginUsecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LogInUseCase logInUseCase;

  LoginBloc({required this.logInUseCase}) : super(LoginInitial()) {
    on<LoginEventCalled>(_onLogin);
  }

  FutureOr<void> _onLogin(
      LoginEventCalled event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    final response = await logInUseCase(
      LoginEntity(
        password: event.password,
        email: event.email,
      ),
    );

    response.fold((l) => emit(LoginError(errorMessage: l.errorMessage)),
        (r) => emit(LoginLoaded()));
  }
}
