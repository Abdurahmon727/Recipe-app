import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/data/either.dart';
import '../../domain/repository/favourites_repo.dart';
import '../../../home/domain/entity/recipe.dart';
import '../../../../main.dart';

class FavouritesRepositoryImpl extends FavouritesRepository {
  @override
  Either<CacheFailure, List<RecipeEntity>> getEntities() {
    try {
      final result = objectbox.getRecipes();
      return Right(result);
    } on CacheException {
      rethrow;
    } catch (e) {
      return Left(
          const CacheFailure(errorMessage: 'Error Occured on local storage'));
    }
  }

  @override
  Either<CacheFailure, void> putEntities(List<RecipeEntity> recipes) {
    try {
      objectbox.putRecipes(recipes);
      return Right(null);
    } on CacheException {
      rethrow;
    } catch (e) {
      return Left(
          const CacheFailure(errorMessage: 'Error Occured on local storage'));
    }
  }

  @override
  Either<CacheFailure, void> removeEntity(int id) {
    try {
      objectbox.removeEntity(id);
      return Right(null);
    } on CacheException {
      rethrow;
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'error'));
    }
  }
}
