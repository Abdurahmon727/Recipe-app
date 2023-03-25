import 'package:remote_recipe/features/auth/domain/repository/auth_repo.dart';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/auth_repo_impl.dart';

class SentCodeUseCase implements UseCase<void, String> {
  final AuthRepository _repository;
  SentCodeUseCase(AuthRepository authRepository, {AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();
  @override
  Future<Either<Failure, void>> call(String params) {
    return _repository.signIn(params);
  }
}
