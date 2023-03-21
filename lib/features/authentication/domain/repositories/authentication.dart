import 'dart:async';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/models/authentication_status.dart';
import '../entities/authenticated_user.dart';
import '../usecases/login.dart';
import '../usecases/register.dart';

abstract class AuthenticationRepository {
  final controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status;

  Future<Either<ServerFailure, void>> loginViaEmail({
    required String email,
    required String password,
  });

  Future<Either<ServerFailure, void>> verifyEmail({required String email});

  Future<Either<ServerFailure, EmailServerCredentials>> registerViaEmail({
    required RegisterEmailCredentials credentials,
  });

  Future<Either<ServerFailure, AuthenticatedUser>> getProfile();

  Future<Either<ServerFailure, void>> logout();

  Future<Either<ServerFailure, void>> refresh();

  Future<Either<ServerFailure, void>> confirmCode({
    required String email,
    required int code,
  });

  Future<Either<ServerFailure, void>> resetPassword(
      ResetPasswordCredentials credentials);
}
