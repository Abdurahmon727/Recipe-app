import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/home_repo_impl.dart';
import '../entity/recipe.dart';
import '../repository/home_repo.dart';

class GetRecipeUseCase implements UseCase<RecipeEntity, int> {
  final HomeRepository _repository = HomeRepositoryImpl();

  @override
  Future<Either<Failure, RecipeEntity>> call(int params) async {
    return _repository.getRecipe(params);
  }
}
