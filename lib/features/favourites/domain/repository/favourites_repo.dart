import 'package:remote_recipe/core/error/failure.dart';
import 'package:remote_recipe/features/home/domain/entity/recipe.dart';

import '../../../../core/data/either.dart';

abstract class FavouritesRepository {
  Future<Either<CacheFailure, List<RecipeEntity>>> getEntities();
}
