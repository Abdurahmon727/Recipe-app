part of 'detailed_recipe_load_bloc.dart';

@freezed
class DetailedRecipeLoadState with _$DetailedRecipeLoadState {
  factory DetailedRecipeLoadState(
      {@Default(FormzStatus.pure)
          FormzStatus status,
      @Default(RecipeEntity(
        healthyScore: 10,
        id: 12,
        image: '2',
        instructions: '',
        readyInMinutes: 1,
        title: '',
      ))
          RecipeEntity entity}) = _DetailedRecipeLoadState;
}
