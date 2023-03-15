import 'package:equatable/equatable.dart';

class SuggestionEntity extends Equatable {
  final int id;
  final String title;
  const SuggestionEntity({
    required this.id,
    required this.title,
  });

  @override
  List<Object?> get props => [id, title];
}
