import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';
part 'authenticated_user.g.dart';

@Freezed()
class AuthenticatedUserModel with _$AuthenticatedUserModel {
  factory AuthenticatedUserModel({
    @Default('') @JsonKey(name: 'email') String email,
    @Default('') @JsonKey(name: 'full_name') String fullName,
    @Default('') @JsonKey(name: 'profile_image') String profileImage,
    @Default('') @JsonKey(name: 'bio') String bio,
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _AuthenticatedUserModel;

  factory AuthenticatedUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticatedUserModelFromJson(json);
}
