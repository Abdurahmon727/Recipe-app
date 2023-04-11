// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class SearchHistoryElement extends Equatable {
  @Id()
  int id;
  final String name;
  SearchHistoryElement({
    this.id = 0,
    required this.name,
  });
  @override
  List<Object?> get props => [id, name];
}
