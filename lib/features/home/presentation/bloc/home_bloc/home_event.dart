part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getRecipes() = _GetRecipes;
  const factory HomeEvent.addRecipes() = _AddRecipes;
}
