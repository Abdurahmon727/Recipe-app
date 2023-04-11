part of 'detailed_recipe_load_bloc.dart';

@freezed
class DetailedRecipeLoadEvent with _$DetailedRecipeLoadEvent {
  const factory DetailedRecipeLoadEvent.load(
      {required int id, required ValueChanged<String> onFailure}) = _Load;
}
