import 'dart:async';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/models/authentication_status.dart';

abstract class AuthRepository {
  final controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status;
  Future<Either<ServerFailure, void>> signIn(String phoneNumber);
  Future<Either<ServerFailure, void>> checkSms(String smsCode);
  Future<Either<Failure, void>> logOut();
}
