import '../../../../core/data/either.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/authentication.dart';

class RegisterationUseCase implements UseCase<void, RegisterationParams> {
  final AuthenticationRepository repository;

  const RegisterationUseCase(this.repository);

  @override
  Future<Either<ServerFailure, void>> call(RegisterationParams params) async {
    if (params is RegisterEmailCredentials) {
      return await repository.registerViaEmail(
          emailAddress: params.email, password: params.email);
    } else {
      throw ServerException(statusMessage: 'No such method', statusCode: 141);
    }
  }
}

abstract class ServerCredentials {
  const ServerCredentials();
}

class EmailServerCredentials extends ServerCredentials {}

abstract class RegisterationParams {
  const RegisterationParams();
}

class RegisterEmailCredentials extends RegisterationParams {
  final String email;
  final String password;
  final String confirmPassword;
  const RegisterEmailCredentials({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}
