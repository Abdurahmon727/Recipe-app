part of 'similar_recipe_bloc.dart';

@freezed
class SimilarRecipeEvent with _$SimilarRecipeEvent {
  const factory SimilarRecipeEvent.getRecipes(int id) = _GetRecipes;
}
