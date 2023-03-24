import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repository/auth_repo.dart';

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();

  @override
  Future<Either<ServerFailure, String>> signIn(String phoneNumber) async {
    String id = '';
    if (await _networkInfo.connected) {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (some) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          id = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      if (id.isNotEmpty) {
        return Right(id);
      } else {
        return Left(
            const ServerFailure(errorMessage: 'error occured id empty'));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'no internet'));
    }
  }

  @override
  Future<Either<ServerFailure, void>> checkSms(
      String smsCode, String id) async {
    if (await _networkInfo.connected) {
      try {
        PhoneAuthCredential credential =
            PhoneAuthProvider.credential(verificationId: id, smsCode: smsCode);
        await FirebaseAuth.instance.signInWithCredential(credential);
        return Right(null);
      } on FirebaseException catch (e) {
        return Left(
            ServerFailure(errorMessage: e.message ?? 'something went wrong'));
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'no internet'));
    }
  }
}
