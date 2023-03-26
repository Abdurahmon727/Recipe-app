import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'features/home/domain/entity/recipe.dart';
import 'objectbox.g.dart';

class ObjectBox {
  late final Store _store;

  late final Box<RecipeEntity> _box;

  ObjectBox._create(this._store) {
    _box = Box<RecipeEntity>(_store);
  }

  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();

    final store =
        await openStore(directory: p.join(docsDir.path, "obx-example"));
    return ObjectBox._create(store);
  }

  List<RecipeEntity> getRecipes() {
    return _box.getAll();
  }

  void putRecipes(List<RecipeEntity> entities) {
    _box.putMany(entities);
  }
}
