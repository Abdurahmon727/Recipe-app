import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:remote_recipe/core/data/network_info.dart';
import 'package:remote_recipe/core/error/failure.dart';
import 'package:remote_recipe/core/data/either.dart';

import '../../domain/repository/auth_repo.dart';

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();

  @override
  Future<Either<ServerFailure, void>> signIn(String phoneNumber) async {
    if (await _networkInfo.connected) {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } else {
      return Left(ServerFailure(errorMessage: 'no internet'));
    }
    return Left(ServerFailure(errorMessage: 'no internet'));
  }
}
