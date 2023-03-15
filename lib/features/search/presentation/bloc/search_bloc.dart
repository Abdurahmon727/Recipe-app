import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_recipe/features/search/domain/entity/suggestion.dart';

import '../../../../core/models/formz/formz_status.dart';
import '../../../home/domain/entity/recipe.dart';
import '../../domain/usecase/get_results.dart';
import '../../domain/usecase/get_suggestion.dart';
import '../../domain/usecase/get_suggestion_result.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const _SearchState()) {
    on<_GetSuggestions>((event, emit) async {
      final usecase = GetSuggestionsUseCase();
      final result = await usecase.call(event.query);
      result.either((_) {}, (data) {
        emit(state.copyWith(suggestions: data));
      });
    });

    on<_GetResults>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final usecase = GetResultsUseCase();
      final result = await usecase.call(event.query);
      result.either((fail) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }, (data) {
        emit(state.copyWith(
            status: FormzStatus.submissionSuccess, results: data));
      });
    });

    on<_GetSuggestionResult>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final usecase = GetSuggestionResultUseCase();
      final result = await usecase.call(event.id);
      result.either((fail) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }, (data) {
        emit(state.copyWith(
            status: FormzStatus.submissionSuccess, results: data));
      });
    });
  }
}
