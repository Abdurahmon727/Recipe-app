part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.getRecipes() = _GetRecipes;
  const factory FavouritesEvent.addRecipe(RecipeEntity entity) = _AddRecipe;
  const factory FavouritesEvent.removeRecipe(RecipeEntity entity) =
      _RemoveRecipe;
}
