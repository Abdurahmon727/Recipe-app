
import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/auth_repo_impl.dart';
import '../repository/auth_repo.dart';

class CheckSmsUseCase implements UseCase<void, String> {
  final AuthRepository _reposiotory;
  CheckSmsUseCase(AuthRepository authRepository, {AuthRepository? reposiotory})
      : _reposiotory = reposiotory ?? AuthRepositoryImpl();
  @override
  Future<Either<Failure, void>> call(String params) {
    return _reposiotory.checkSms(params);
  }
}
