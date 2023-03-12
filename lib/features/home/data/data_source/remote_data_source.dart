import 'package:dio/dio.dart';
import 'package:remote_recipe/assets/constants/constants.dart';

import '../../../../core/error/exeptions.dart';
import '../models/recipe.dart';

abstract class HomeRemoteDataSource {
  Future<List<RecipeModel>> getRecipes();
  Future<List<RecipeModel>> getSimilarRecipes(int id);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final Dio _dio = Dio();

  @override
  Future<List<RecipeModel>> getRecipes() async {
    final response = await _dio.get(
        'https://api.spoonacular.com/recipes/random?apiKey=$apiKey&number=10');
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return (response.data['recipes'] as List)
          .map((json) => RecipeModel.fromJson(json))
          .toList();
    } else {
      throw ServerException(
          statusMessage: "Server Failure", statusCode: response.statusCode!);
    }
  }

  @override
  Future<List<RecipeModel>> getSimilarRecipes(int id) async {
    final response = await _dio.get(
        'https://api.spoonacular.com/recipes/$id/similar?apiKey=$apiKey&number=5');
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      final models = (response.data as List).map((element) async {
        final id = element['id'];
        final response = await _dio.get(
            'https://api.spoonacular.com/recipes/$id/information?apiKey=$apiKey&includeNutrition=false');
        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          return RecipeModel.fromJson(response.data);
        } else {
          throw ServerException(
              statusMessage: 'Server Failure',
              statusCode: response.statusCode!);
        }
      }).toList();

      return Future.wait(models);
    } else {
      throw ServerException(
          statusMessage: "Server Failure", statusCode: response.statusCode!);
    }
  }
}
