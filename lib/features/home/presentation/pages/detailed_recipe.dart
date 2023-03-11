import 'package:flutter/material.dart';
import 'package:remote_recipe/assets/colors/colors.dart';
import 'package:remote_recipe/features/home/domain/entity/recipe.dart';

class DetailedRecipePage extends StatelessWidget {
  const DetailedRecipePage({super.key, required this.entity});

  final RecipeEntity entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange,
        title: Text(entity.title),
      ),
      body: ListView(
        children: [
          Image.network(entity.image),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(entity.instructions),
          ),
        ],
      ),
    );
  }
}
