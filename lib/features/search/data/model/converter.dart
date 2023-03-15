import 'package:remote_recipe/features/search/data/model/suggestion.dart';
import 'package:remote_recipe/features/search/domain/entity/suggestion.dart';

abstract class SearchConverter {
  static List<SuggestionEntity> fromSuggestionModelToEntity(
      List<SuggestionModel> models) {
    return models
        .map((model) => SuggestionEntity(id: model.id, title: model.title))
        .toList();
  }
}
