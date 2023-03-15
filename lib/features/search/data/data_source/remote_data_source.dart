import 'package:dio/dio.dart';
import 'package:remote_recipe/features/search/data/model/suggestion.dart';

import '../../../../assets/constants/constants.dart';
import '../../../../core/error/exeptions.dart';
import '../../../home/data/models/recipe.dart';

abstract class SearchRemoteDataSource {
  Future<List<SuggestionModel>> getSuggests(String query);
  Future<List<RecipeModel>> getResults(String query);
  Future<List<RecipeModel>> getSuggestionResult(int id);
}

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final _dio = Dio(BaseOptions());
  @override
  Future<List<SuggestionModel>> getSuggests(String query) async {
    final result = await _dio.get(
        'https://api.spoonacular.com/recipes/autocomplete?apiKey=$apiKey&number=5&query=$query');
    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final list = result.data as List;
      final data = list.map((map) => SuggestionModel.fromJson(map)).toList();

      return data;
    } else {
      throw ServerException(
          statusMessage: 'Server Failure', statusCode: result.statusCode!);
    }
  }

  @override
  Future<List<RecipeModel>> getResults(String query) async {
    final respont = await _dio.get(
        'https://api.spoonacular.com/recipes/complexSearch?apiKey=$apiKey&query=$query&number=10');
    if (respont.statusCode! >= 200 && respont.statusCode! < 300) {
      final list = respont.data['results'] as List;
      final data = list.map((map) async {
        final response = await _dio.get(
            'https://api.spoonacular.com/recipes/${map['id']}/information?apiKey=$apiKey');
        return RecipeModel.fromJson(response.data);
      }).toList();

      return Future.wait(data);
    } else {
      throw ServerException(
          statusMessage: 'Server Failure', statusCode: respont.statusCode!);
    }
  }

  @override
  Future<List<RecipeModel>> getSuggestionResult(int id) async {
    final response = await _dio.get(
        'https://api.spoonacular.com/recipes/$id/information?apiKey=$apiKey');
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return [RecipeModel.fromJson(response.data)];
    } else {
      throw ServerException(
          statusMessage: 'Server Failure', statusCode: response.statusCode!);
    }
  }
}
