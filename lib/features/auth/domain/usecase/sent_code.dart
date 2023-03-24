import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/auth_repo_impl.dart';

class SentCodeUseCase implements UseCase<String, String> {
  final _repository = AuthRepositoryImpl();
  @override
  Future<Either<Failure, String>> call(String params) {
    return _repository.signIn(params);
  }
}
