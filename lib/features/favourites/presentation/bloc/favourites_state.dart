part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default([]) List<RecipeEntity> entities,
    @Default('') String errorMessage,
  }) = _FavouritesState;
}
