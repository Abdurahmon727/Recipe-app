import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_recipe/features/favourites/data/repository/favourites_repo_impl.dart';
import 'package:remote_recipe/features/favourites/domain/repository/favourites_repo.dart';
import 'package:remote_recipe/main.dart';

import '../../../../core/models/formz/formz_status.dart';
import '../../../home/domain/entity/recipe.dart';

part 'favourites_bloc.freezed.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final FavouritesRepository _repository;
  FavouritesBloc({FavouritesRepository? repository})
      : _repository = repository ?? FavouritesRepositoryImpl(),
        super(const _FavouritesState()) {
    on<_GetRecipes>((event, emit) {
      final recipes = _repository.getEntities();
      recipes.either((fail) {
        event.onFailure(fail.errorMessage);
      }, (data) {
        emit(state.copyWith(
            status: FormzStatus.submissionSuccess, entities: data));
      });
    });
    on<_AddRecipe>((event, emit) {
      final newEntities = state.entities + [event.entity];
      final result = _repository.putEntities(newEntities);
      result.either((value) {}, (_) {});

      emit(state.copyWith(entities: newEntities));
    });
    on<_RemoveRecipe>((event, emit) {
      List<RecipeEntity> newEntities = [];
      for (int i = 0; i < state.entities.length; i++) {
        if (state.entities[i] != event.entity) {
          newEntities.add(state.entities[i]);
        }
      }
      final result = _repository.removeEntity(event.entity.id);
      result.either((value) {}, (_) {});
      emit(state.copyWith(entities: newEntities));
    });
  }
}
