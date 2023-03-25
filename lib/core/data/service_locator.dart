import 'package:get_it/get_it.dart';
import 'package:remote_recipe/features/auth/data/repository/auth_repo_impl.dart';
import 'package:remote_recipe/features/auth/domain/repository/auth_repo.dart';
import 'package:remote_recipe/features/favourites/presentation/bloc/favourites_bloc.dart';

import 'dio_settings.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  serviceLocator.registerLazySingleton(DioSettings.new);

  serviceLocator.registerLazySingleton(() => FavouritesBloc());

  serviceLocator
      .registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}
