import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/home_repo_impl.dart';
import '../entity/recipe.dart';
import '../repository/home_repo.dart';

class GetRecipesUseCase implements UseCase<List<RecipeEntity>, NoParams> {
  final HomeRepository _repository = HomeRepositoryImpl();

  @override
  Future<Either<Failure, List<RecipeEntity>>> call(NoParams params) async {
    return _repository.getRecipies();
  }
}
