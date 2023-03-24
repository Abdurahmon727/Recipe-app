import 'package:remote_recipe/core/data/either.dart';
import 'package:remote_recipe/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<ServerFailure, String>> signIn(String phoneNumber);
  Future<Either<ServerFailure, void>> checkSms(String smsCode, String id);
}
