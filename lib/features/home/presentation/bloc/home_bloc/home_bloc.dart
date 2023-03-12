import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/formz/formz_status.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../../domain/entity/recipe.dart';
import '../../../domain/usecase/get_recipies.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<_GetRecipes>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final usecase = GetRecipesUseCase();
      final result = await usecase.call(NoParams());
      result.either((error) {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: error.errorMessage));
      }, (data) {
        emit(state.copyWith(
            entities: data, status: FormzStatus.submissionSuccess));
      });
    });
    on<_AddRecipes>(
      (event, emit) async {
        final usecase = GetRecipesUseCase();
        final result = await usecase.call(NoParams());
        result.either((error) {
          emit(state.copyWith(
              status: FormzStatus.submissionFailure,
              errorMessage: error.errorMessage));
        }, (data) {
          emit(state.copyWith(entities: state.entities + data));
        });
      },
    );
  }
}
