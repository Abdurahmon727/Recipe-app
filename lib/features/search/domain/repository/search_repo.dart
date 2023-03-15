import 'package:remote_recipe/features/home/domain/entity/recipe.dart';
import 'package:remote_recipe/features/search/domain/entity/suggestion.dart';

import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<SuggestionEntity>>> getSuggestion(String query);
  Future<Either<Failure, List<RecipeEntity>>> getResults(String query);
  Future<Either<Failure, List<RecipeEntity>>> getSuggestionResult(int id);
}
