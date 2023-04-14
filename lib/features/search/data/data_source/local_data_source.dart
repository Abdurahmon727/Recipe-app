import '../../../../main.dart';
import '../../domain/entity/search_history.dart';

abstract class SearchLocalDataSource {
  void putSearchHistoryElement(SearchHistoryElement entity);
  List<SearchHistoryElement> getSearchHistory();
  void removeSearchHistoryElement(int id);
}

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  @override
  List<SearchHistoryElement> getSearchHistory() {
    return objectbox.getSearchHistory();
  }

  @override
  void putSearchHistoryElement(SearchHistoryElement entity) {
    objectbox.putSearchHistoryElement(entity);
  }

  @override
  void removeSearchHistoryElement(int id) {
    objectbox.removeSearchHistoryElement(id);
  }
}
