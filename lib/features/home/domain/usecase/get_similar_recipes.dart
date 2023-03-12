import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/home_repo_impl.dart';
import '../entity/recipe.dart';
import '../repository/home_repo.dart';

class GetSimilarRecipesUseCase implements UseCase<List<RecipeEntity>, int> {
  final HomeRepository _repository = HomeRepositoryImpl();
  @override
  Future<Either<Failure, List<RecipeEntity>>> call(int params) {
    return _repository.getSimilarRecipes(params);
  }
}
