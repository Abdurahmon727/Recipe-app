import '../../domain/entity/recipe.dart';
import 'recipe.dart';

abstract class Converter {
  static List<RecipeEntity> recipeModelsToEntities(List<RecipeModel> models) {
    return models
        .map((model) => RecipeEntity(
            id: model.id,
            readyInMinutes: model.readyInMinutes,
            title: model.title ?? '',
            image: model.image ?? '',
            instructions: model.instructions ?? '',
            healthyScore: model.healthScore))
        .toList();
  }

  static RecipeEntity recipeModelToEntity(RecipeModel model) {
    return RecipeEntity(
        id: model.id,
        readyInMinutes: model.readyInMinutes,
        title: model.title ?? '',
        image: model.image ?? '',
        instructions: model.instructions ?? '',
        healthyScore: model.healthScore);
  }
}
