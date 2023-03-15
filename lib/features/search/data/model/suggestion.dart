import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion.freezed.dart';
part 'suggestion.g.dart';

@freezed
class SuggestionModel with _$SuggestionModel {
  const factory SuggestionModel({
    required int id,
    required String title,
  }) = _SuggestionModel;
  factory SuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestionModelFromJson(json);
}
