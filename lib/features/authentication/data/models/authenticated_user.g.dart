// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticated_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticatedUserModel _$$_AuthenticatedUserModelFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticatedUserModel(
      email: json['email'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      profileImage: json['profile_image'] as String? ?? '',
      bio: json['bio'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      createdAt: json['createdAt'] as String? ?? '',
      updatedAt: json['updatedAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthenticatedUserModelToJson(
        _$_AuthenticatedUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'full_name': instance.fullName,
      'profile_image': instance.profileImage,
      'bio': instance.bio,
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
