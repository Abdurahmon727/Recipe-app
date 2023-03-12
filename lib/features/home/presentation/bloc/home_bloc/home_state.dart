part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default([]) List<RecipeEntity> entities,
    @Default('') String errorMessage,
  }) = _HomeState;
}
