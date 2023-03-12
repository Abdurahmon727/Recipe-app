import 'package:remote_recipe/core/data/either.dart';
import 'package:remote_recipe/core/error/failure.dart';

import '../entity/recipe.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<RecipeEntity>>> getRecipies();
  Future<Either<Failure, List<RecipeEntity>>> getSimilarRecipes(int id);
}
