// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class RecipeEntity extends Equatable {
  final int id;
  final int readyInMinutes;
  final String title;
  final String image;
  final String instructions;
  final int healthyScore;
  const RecipeEntity({
    required this.id,
    required this.readyInMinutes,
    required this.title,
    required this.image,
    required this.instructions,
    required this.healthyScore,
  });
  @override
  List<Object?> get props =>
      [id, readyInMinutes, title, image, instructions, healthyScore];
}
