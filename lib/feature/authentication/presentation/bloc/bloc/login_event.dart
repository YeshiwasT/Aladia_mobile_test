part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginEventCalled extends LoginEvent {
  String email;
  String password;
  LoginEventCalled({required this.email, required this.password});
}
