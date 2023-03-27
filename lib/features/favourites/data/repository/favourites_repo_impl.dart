import 'package:remote_recipe/core/error/exeptions.dart';
import 'package:remote_recipe/core/error/failure.dart';
import 'package:remote_recipe/core/data/either.dart';
import 'package:remote_recipe/features/favourites/domain/repository/favourites_repo.dart';
import 'package:remote_recipe/features/home/domain/entity/recipe.dart';
import 'package:remote_recipe/main.dart';
import 'package:remote_recipe/objectbox.dart';

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
