import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entity/loginEntity.dart';
import '../../domain/repository/authRepository.dart';
import '../dataSource/authRemoteDatasource.dart';

class Authrepositoryimpl implements AuthRepository {
  AuthRemoteDatasource authenticationRemoteDataSource;
  Authrepositoryimpl({required this.authenticationRemoteDataSource});
  @override
  Future<Either<Failure, void>> login({
    required LoginEntity loginParams,
  }) async {
    try {
      final response =
          await authenticationRemoteDataSource.login(loginParams: loginParams);
      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure(errorMessage: e.errorMessage));
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
