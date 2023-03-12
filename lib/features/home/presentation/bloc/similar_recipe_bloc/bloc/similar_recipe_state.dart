part of 'similar_recipe_bloc.dart';

@freezed
class SimilarRecipeState with _$SimilarRecipeState {
  const factory SimilarRecipeState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default([]) List<RecipeEntity> entities,
    @Default('') String errorMessage,
  }) = _SimilarRecipeState;
}
