part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getSuggestions(String query) = _GetSuggestions;
  const factory SearchEvent.getResults(String query) = _GetResults;
  const factory SearchEvent.getSuggestionResult(int id) = _GetSuggestionResult;
}
