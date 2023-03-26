import 'features/home/domain/entity/recipe.dart';
import 'objectbox.g.dart';

class ObjectBox {
  late final Store _store;

  late final Box<RecipeEntity> _box;

  ObjectBox._create(this._store) {
    _box = Box<RecipeEntity>(_store);
  }

  static Future<ObjectBox> create() async {
    final store = openStore();
    return ObjectBox._create(store);
  }

  Stream<List<RecipeEntity>> getFavRecipes() {
    // Query for all notes, sorted by their date.
    // https://docs.objectbox.io/queries
    final builder = _box.query();
    // Build and watch the query,
    // set triggerImmediately to emit the query immediately on listen.
    return builder.watch(triggerImmediately: true).map((query) => query.find());
  }

  /// Add a note.
  ///
  /// To avoid frame drops, run ObjectBox operations that take longer than a
  /// few milliseconds, e.g. putting many objects, asynchronously.
  /// For this example only a single object is put which would also be fine if
  /// done using [Box.put].
  // Future<void> addNote(String text) => _box.putAsync(Note(text));

  // Future<void> removeNote(int id) => _noteBox.removeAsync(id);
}
