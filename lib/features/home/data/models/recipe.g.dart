// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      id: json['id'] as int,
      readyInMinutes: json['readyInMinutes'] as int,
      title: json['title'],
      image: json['image'],
      instructions: json['instructions'] as String,
      healthScore: json['healthScore'] as int,
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'readyInMinutes': instance.readyInMinutes,
      'title': instance.title,
      'image': instance.image,
      'instructions': instance.instructions,
      'healthScore': instance.healthScore,
    };
