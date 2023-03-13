part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default([]) List<String> suggestions,
    @Default([]) List<RecipeEntity> results,
    @Default('') String errorMessage,
  }) = _SearchState;
}
