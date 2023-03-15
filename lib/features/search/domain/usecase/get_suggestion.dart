import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/search_repo_impl.dart';
import '../entity/suggestion.dart';
import '../repository/search_repo.dart';

class GetSuggestionsUseCase implements UseCase<List<SuggestionEntity>, String> {
  final SearchRepository _repository = SearchRepositoryImpl();
  @override
  Future<Either<Failure, List<SuggestionEntity>>> call(String query) {
    return _repository.getSuggestion(query);
  }
}
