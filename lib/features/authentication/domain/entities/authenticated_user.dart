import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_user.freezed.dart';

@freezed
class AuthenticatedUser with _$AuthenticatedUser {
  const factory AuthenticatedUser({
    @Default('') String email,
    @Default(0) int id,
    @Default('') String profileImage,
    @Default('') String fullName,
    @Default('') String bio,
  }) = _AuthenticatedUser;
}
