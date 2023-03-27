import 'package:firebase_auth/firebase_auth.dart';
import 'package:remote_recipe/features/auth/presentation/pages/sms_check_page.dart';

import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repository/auth_repo.dart';

String _id = '';

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();

  @override
  Stream<User?> get status => FirebaseAuth.instance.authStateChanges();

  @override
  Future<Either<ServerFailure, void>> signIn(String phoneNumber) async {
    if (await _networkInfo.connected) {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (cre) {
          smsInputController.text = cre.smsCode ?? '';
          FirebaseAuth.instance.signInWithCredential(cre);
        },
        verificationFailed: (FirebaseAuthException e) {
          print('FAILED: ${e.message}');
        },
        codeSent: (String verificationId, int? resendToken) {
          _id = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _id = verificationId;
        },
      );
      return Right(null);
    } else {
      return Left(const ServerFailure(errorMessage: 'no internet'));
    }
  }

  @override
  Future<Either<ServerFailure, void>> checkSms(String smsCode) async {
    if (await _networkInfo.connected) {
      try {
        PhoneAuthCredential credential =
            PhoneAuthProvider.credential(verificationId: _id, smsCode: smsCode);
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

  @override
  Future<Either<Failure, void>> logOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return Right(null);
    } on FirebaseException catch (e) {
      return Left(ServerFailure(errorMessage: e.message!));
    }
  }
}