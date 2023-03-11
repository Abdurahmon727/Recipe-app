import 'package:dio/dio.dart';
import 'package:remote_recipe/assets/constants/constants.dart';

import '../../../../core/error/exeptions.dart';
import '../models/recipe.dart';

abstract class HomeRemoteDataSource {
  Future<List<RecipeModel>> getRecipes();
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
}
