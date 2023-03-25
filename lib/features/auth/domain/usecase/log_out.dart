import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/auth_repo_impl.dart';
import '../repository/auth_repo.dart';

class LogOutUseCase implements UseCase<void, NoParams> {
  final AuthRepository _repository;
  LogOutUseCase(AuthRepository authRepository, {AuthRepository? repository})
      : _repository = repository ?? AuthRepositoryImpl();
  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return _repository.logOut();
  }
}
