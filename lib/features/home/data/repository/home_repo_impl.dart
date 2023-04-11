import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entity/recipe.dart';
import '../../domain/repository/home_repo.dart';
import '../data_source/remote_data_source.dart';
import '../models/converter.dart';

class HomeRepositoryImpl extends HomeRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();
  final HomeRemoteDataSource _remoteDataSource = HomeRemoteDataSourceImpl();
  @override
  Future<Either<Failure, List<RecipeEntity>>> getRecipies() async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getRecipes();

        return Right(Converter.recipeModelsToEntities(data));
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(const ServerFailure(errorMessage: "No Internet"));
    }
  }

  @override
  Future<Either<Failure, List<RecipeEntity>>> getSimilarRecipes(int id) async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getSimilarRecipes(id);

        return Right(Converter.recipeModelsToEntities(data));
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(const ServerFailure(errorMessage: "No Internet"));
    }
  }

  @override
  Future<Either<Failure, RecipeEntity>> getRecipe(int id) async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getRecipe(id);

        return Right(Converter.recipeModelToEntity(data));
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(const ServerFailure(errorMessage: "No Internet"));
    }
  }
}
