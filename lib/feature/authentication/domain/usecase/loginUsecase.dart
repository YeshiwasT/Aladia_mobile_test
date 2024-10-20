import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/loginEntity.dart';
import '../repository/authRepository.dart';

class LogInUseCase extends UseCase<void, LoginEntity> {
  final AuthRepository authenticationRepository;

  LogInUseCase({
    required this.authenticationRepository,
  });

  @override
  Future<Either<Failure, void>> call(LoginEntity params) async {
    return authenticationRepository.login(loginParams: params);
  }
}
