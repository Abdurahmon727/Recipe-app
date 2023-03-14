import 'package:remote_recipe/features/home/domain/entity/recipe.dart';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<String>>> getSuggestion(String query);
  Future<Either<Failure, List<RecipeEntity>>> getResults(String query);
}
