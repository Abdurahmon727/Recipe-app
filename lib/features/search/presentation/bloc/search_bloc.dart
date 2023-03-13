import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_recipe/core/models/formz/formz_status.dart';

import '../../../home/domain/entity/recipe.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const _SearchState()) {
    on<SearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
