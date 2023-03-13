import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../home/domain/entity/recipe.dart';
import '../../data/repository/search_repo_impl.dart';
import '../repository/search_repo.dart';

class GetResultsUseCase implements UseCase<List<RecipeEntity>, String> {
  final SearchRepository _repository = SearchRepositoryImpl();
  @override
  Future<Either<Failure, List<RecipeEntity>>> call(String params) {
    return _repository.getResults(params);
  }
}
