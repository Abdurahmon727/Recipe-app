import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required int id,
    required int readyInMinutes,
    required String? title,
    required String? image,
    required String? instructions,
    required int healthScore,
  }) = _RecipeModel;
  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);
}
