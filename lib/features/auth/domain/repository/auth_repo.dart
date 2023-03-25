import 'dart:async';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<ServerFailure, void>> signIn(String phoneNumber);
  Future<Either<ServerFailure, void>> checkSms(String smsCode);
  Future<Either<Failure, void>> logOut();
}
