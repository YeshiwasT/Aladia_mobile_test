import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  abstract final String errorMessage;
  @override
  List<Object?> get props => [];
}

class Equatable {
}

class ServerFailure extends Failure {
  @override
  final String errorMessage;
  ServerFailure(
      {this.errorMessage = 'Something went wrong. Please try again later'});
}

class CacheFailure extends Failure {
  @override
  final String errorMessage;
  CacheFailure({this.errorMessage = 'Cache failure'});
}

class NetworkFailure extends Failure {
  @override
  final String errorMessage = "Network Failure";
  NetworkFailure();
}

class UnauthorizedRequestFailure extends Failure {
  @override
  final String errorMessage;

  UnauthorizedRequestFailure({this.errorMessage = 'User not authenticated'});
}

class AnonymousFailure extends Failure {
  @override
  final String errorMessage;
  AnonymousFailure({this.errorMessage = 'Unknown error happened'});
}

class UserAlreadyRegisteredFailure extends Failure {
  @override
  final String errorMessage;
  UserAlreadyRegisteredFailure({this.errorMessage = 'User already registered'});
}
