import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entity/loginEntity.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> login({
    required LoginEntity loginParams,
  });
}
