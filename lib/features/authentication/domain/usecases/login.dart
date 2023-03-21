import 'package:equatable/equatable.dart';

import '../../../../core/data/either.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/authentication.dart';

class LoginViaExternalPlatformsUseCases implements UseCase<void, Params> {
  final AuthenticationRepository _repository;

  const LoginViaExternalPlatformsUseCases(AuthenticationRepository repository)
      : _repository = repository;
  @override
  Future<Either<ServerFailure, void>> call(Params params) async {
    if (params is EmailCredentials) {
      return await _repository.loginViaEmail(
        email: params.email,
        password: params.password,
      );
    } else if (params is VerifyEmailCredentials) {
      return await _repository.verifyEmail(email: params.email);
    } else if (params is ResetPasswordCredentials) {
      return await _repository.resetPassword(params);
    } else if (params is Logout) {
      return await _repository.logout();
    } else if (params is RefreshToken) {
      return await _repository.refresh();
    } else if (params is ConfirmCode) {
      return await _repository.confirmCode(
        email: params.email,
        code: params.code,
      );
    } else {
      throw ServerException(statusMessage: 'No such method', statusCode: 141);
    }
  }
}

abstract class Params extends Equatable {
  const Params();
}

class EmailCredentials extends Params {
  final String email;
  final String password;

  const EmailCredentials({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() => 'EmailCredentials(email: $email, password: $password)';
}

class VerifyEmailCredentials extends Params {
  final String email;

  const VerifyEmailCredentials(this.email);

  @override
  List<Object?> get props => [];
}

class ResetPasswordCredentials extends Params {
  final String email;
  final int verificationCode;
  final String newPassword;
  final String confirmPassword;

  const ResetPasswordCredentials({
    required this.email,
    required this.verificationCode,
    required this.newPassword,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [];
}

class Logout extends Params {
  @override
  List<Object?> get props => [];
}

class RefreshToken extends Params {
  @override
  List<Object?> get props => [];
}

class ConfirmCode extends Params {
  final String email;
  final int code;

  const ConfirmCode({required this.email, required this.code});

  @override
  List<Object?> get props => [];
}
