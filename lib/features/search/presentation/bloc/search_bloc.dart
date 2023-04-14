import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/formz/formz_status.dart';
import '../../../../main.dart';
import '../../../home/domain/entity/recipe.dart';
import '../../domain/entity/search_history.dart';
import '../../domain/entity/suggestion.dart';
import '../../domain/usecase/get_results.dart';
import '../../domain/usecase/get_suggestion.dart';
import '../../domain/usecase/get_suggestion_result.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  late StreamSubscription streamSearchHistory;
  SearchBloc() : super(const _SearchState()) {
    streamSearchHistory = objectbox.getSearchHistoryStream().listen((history) {
      add(SearchEvent.changeHistory(history));
    });

    on<_ChangeHistory>(
        (event, emit) => emit(state.copyWith(history: event.history)));

    on<_GetSuggestions>((event, emit) async {
      final usecase = GetSuggestionsUseCase();
      final result = await usecase.call(event.query);
      result.either((_) {}, (data) {
        emit(state.copyWith(suggestions: data));
      });
    });

    on<_Clear>((event, emit) => emit(
          state.copyWith(status: FormzStatus.pure),
        ));

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
        objectbox
            .putSearchHistoryElement(SearchHistoryElement(name: data[0].title));
        emit(state.copyWith(
            status: FormzStatus.submissionSuccess, results: data));
      });
    });
  }
}
