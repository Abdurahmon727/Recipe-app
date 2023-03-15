import '../../../../core/error/failure.dart';
import '../../../../core/data/either.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../home/domain/entity/recipe.dart';
import '../../data/repository/search_repo_impl.dart';
import '../repository/search_repo.dart';

import '../entity/suggestion.dart';

class GetSuggestionResultUseCase implements UseCase<List<RecipeEntity>, int> {
  final SearchRepository _repository = SearchRepositoryImpl();
  @override
  Future<Either<Failure, List<RecipeEntity>>> call(int id) {
    return _repository.getSuggestionResult(id);
  }
}
