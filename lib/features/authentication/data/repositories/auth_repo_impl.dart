import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/models/authentication_status.dart';
import '../../domain/entities/authenticated_user.dart';
import '../../domain/repositories/authentication.dart';
import '../../domain/usecases/login.dart';
import '../data_sources/remote_data_source.dart';

class AuthenticationReposotoryImpl extends AuthenticationRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();
  final AuthRemoteDataSource _remoteDataSource = AuthRemoteDataSourceImpl();
  @override
  Future<Either<ServerFailure, void>> confirmCode(
      {required String email, required int code}) {
    // TODO: implement confirmCode
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, AuthenticatedUser>> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, void>> loginViaEmail(
      {required String email, required String password}) {
    // TODO: implement loginViaEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, void>> refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, void>> resetPassword(
      ResetPasswordCredentials credentials) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  // TODO: implement status
  Stream<AuthenticationStatus> get status => throw UnimplementedError();

  @override
  Future<Either<ServerFailure, void>> verifyEmail({required String email}) {
    // TODO: implement verifyEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, void>> registerViaEmail(
      {required String emailAddress, required String password}) async {
    if (await _networkInfo.connected) {
      try {
        await _remoteDataSource.registerViaEmail(emailAddress, password);
        return Right(null);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          return Left(const ServerFailure(
              errorMessage: 'The password provided is too weak.'));
        } else if (e.code == 'email-already-in-use') {
          return Left(const ServerFailure(
              errorMessage: 'The account already exists for that email.'));
        } else {
          rethrow;
        }
      } catch (e) {
        return Left(const ServerFailure(errorMessage: 'Error occured'));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'No Internet'));
    }
  }
}
