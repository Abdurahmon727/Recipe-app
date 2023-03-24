import 'package:remote_recipe/core/data/either.dart';
import 'package:remote_recipe/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<ServerFailure, void>> signIn(String phoneNumber);
}
