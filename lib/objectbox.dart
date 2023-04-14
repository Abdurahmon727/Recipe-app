import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'features/home/domain/entity/recipe.dart';
import 'features/search/domain/entity/search_history.dart';
import 'objectbox.g.dart';

class ObjectBox {
  late final Store _store;

  late final Box<RecipeEntity> _recipeBox;
  late final Box<SearchHistoryElement> _searchHistoryBox;

  ObjectBox._create(this._store) {
    _recipeBox = Box<RecipeEntity>(_store);
    _searchHistoryBox = Box<SearchHistoryElement>(_store);
  }

  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();

    final store =
        await openStore(directory: p.join(docsDir.path, "obx-example"));
    return ObjectBox._create(store);
  }

  List<SearchHistoryElement> getSearchHistory() {
    return _searchHistoryBox.getAll();
  }

  Stream<List<SearchHistoryElement>> getSearchHistoryStream() =>
      _searchHistoryBox
          .query()
          .watch(triggerImmediately: true)
          .map((query) => query.find());

  void removeSearchHistoryElement(int id) {
    _searchHistoryBox.remove(id);
  }

  void putSearchHistoryElement(SearchHistoryElement entity) {
    _searchHistoryBox.put(entity);
  }

  List<RecipeEntity> getRecipes() {
    return _recipeBox.getAll();
  }

  void removeEntity(int id) {
    _recipeBox.remove(id);
  }

  void putRecipes(List<RecipeEntity> entities) {
    _recipeBox.putMany(entities);
  }
}
