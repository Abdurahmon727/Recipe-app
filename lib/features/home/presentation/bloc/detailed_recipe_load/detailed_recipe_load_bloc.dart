import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/usecase/get_recipe.dart';


import '../../../../../core/models/formz/formz_status.dart';
import '../../../domain/entity/recipe.dart';

part 'detailed_recipe_load_bloc.freezed.dart';
part 'detailed_recipe_load_event.dart';
part 'detailed_recipe_load_state.dart';

class DetailedRecipeLoadBloc
    extends Bloc<DetailedRecipeLoadEvent, DetailedRecipeLoadState> {
  DetailedRecipeLoadBloc() : super(DetailedRecipeLoadState()) {
    on<_Load>((event, emit) async {
      final usecase = GetRecipeUseCase();
      final response = await usecase.call(event.id);
      response.either((error) {
        event.onFailure(error.errorMessage);
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }, (data) {
        emit(state.copyWith(
            entity: data, status: FormzStatus.submissionSuccess));
      });
    });
  }
}
