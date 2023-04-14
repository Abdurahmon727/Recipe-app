import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../../home/data/models/converter.dart';
import '../../../home/domain/entity/recipe.dart';
import '../../domain/entity/search_history.dart';
import '../../domain/entity/suggestion.dart';
import '../../domain/repository/search_repo.dart';
import '../data_source/local_data_source.dart';
import '../data_source/remote_data_source.dart';
import '../model/converter.dart';

class SearchRepositoryImpl extends SearchRepository {
  final SearchRemoteDataSourceImpl _remoteDataSource =
      SearchRemoteDataSourceImpl();
  final SearchLocalDataSource _localDataSource = SearchLocalDataSourceImpl();
  final NetworkInfo _networkInfo = const NetworkInfoImpl();
  @override
  Future<Either<Failure, List<SuggestionEntity>>> getSuggestion(
      String query) async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getSuggests(query);
        return Right(SearchConverter.fromSuggestionModelToEntity(data));
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(
          errorMessage: e.toString(),
        ));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'No Internet'));
    }
  }

  @override
  Future<Either<Failure, List<RecipeEntity>>> getResults(String query) async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getResults(query);
        _localDataSource
            .putSearchHistoryElement(SearchHistoryElement(name: query));
        return Right(Converter.recipeModelsToEntities(data));
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(
          errorMessage: e.toString(),
        ));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'No Internet'));
    }
  }

  @override
  Future<Either<Failure, List<RecipeEntity>>> getSuggestionResult(
      int id) async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getSuggestionResult(id);

        return Right(Converter.recipeModelsToEntities(data));
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(
          errorMessage: e.toString(),
        ));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'No Internet'));
    }
  }
}
