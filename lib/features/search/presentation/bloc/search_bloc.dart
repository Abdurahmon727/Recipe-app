import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/formz/formz_status.dart';
import '../../../home/domain/entity/recipe.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const _SearchState()) {
    on<_GetSuggestions>((event, emit) {
      //TODO:
    });
    on<_GetResults>((event, emit) {
      // TODO: implement event handler
    });
  }
}
