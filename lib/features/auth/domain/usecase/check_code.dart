import 'package:equatable/equatable.dart';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/auth_repo_impl.dart';

class CheckSmsUseCase implements UseCase<void, SmsParams> {
  final _reposiotory = AuthRepositoryImpl();
  @override
  Future<Either<Failure, void>> call(SmsParams params) {
    return _reposiotory.checkSms(params.smsCode, params.id);
  }
}

class SmsParams extends Equatable {
  final String smsCode;
  final String id;
  const SmsParams({
    required this.smsCode,
    required this.id,
  });

  @override
  List<Object?> get props => [smsCode, id];
}
