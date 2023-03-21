import '../../../core/data/either.dart';
import '../../../core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> sentCodeToNumber(String phoneNumber);
}
