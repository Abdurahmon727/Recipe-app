import '../../domain/entity/recipe.dart';
import 'recipe.dart';

abstract class Converter {
  static List<RecipeEntity> recipeModelToEntity(List<RecipeModel> models) {
    return models
        .map((model) => RecipeEntity(
            id: model.id,
            readyInMinutes: model.readyInMinutes,
            title: model.title,
            image: model.image,
            instructions: model.instructions,
            healthyScore: model.healthScore))
        .toList();
  }
}
