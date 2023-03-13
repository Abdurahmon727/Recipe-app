import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:remote_recipe/assets/constants/constants.dart';
import 'package:remote_recipe/core/error/exeptions.dart';
import 'package:remote_recipe/features/home/data/models/recipe.dart';

abstract class SearchRemoteDataSource {
  Future<List<String>> getSuggests(String query);
  Future<List<RecipeModel>> getResults(String query);
}

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final _dio = Dio();
  Future<List<String>> getSuggests(String query) async {
    final result = await _dio.get(
        'https://api.spoonacular.com/recipes/autocomplete?apiKey=$apiKey&number=10&query=$query');
    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = result.data['title' as List].map((title) => title).toList();
      return data;
    } else {
      throw ServerException(
          statusMessage: 'Server Failure', statusCode: result.statusCode!);
    }
  }

  @override
  Future<List<RecipeModel>> getResults(String query) {
    // TODO: implement getResults
    throw UnimplementedError();
  }
}
