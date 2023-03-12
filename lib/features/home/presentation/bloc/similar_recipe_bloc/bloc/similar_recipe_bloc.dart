import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/models/formz/formz_status.dart';
import '../../../../domain/entity/recipe.dart';
import '../../../../domain/usecase/get_similar_recipes.dart';

part 'similar_recipe_bloc.freezed.dart';
part 'similar_recipe_event.dart';
part 'similar_recipe_state.dart';

class SimilarRecipeBloc extends Bloc<SimilarRecipeEvent, SimilarRecipeState> {
  SimilarRecipeBloc() : super(const _SimilarRecipeState()) {
    on<SimilarRecipeEvent>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final usecase = GetSimilarRecipesUseCase();
      final result = await usecase.call(event.id);
      result.either((error) {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: error.errorMessage));
      }, (data) {
        emit(state.copyWith(
            entities: data, status: FormzStatus.submissionSuccess));
      });
    });
  }
}
