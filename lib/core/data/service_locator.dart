import 'package:get_it/get_it.dart';
import 'package:remote_recipe/features/favourites/presentation/bloc/favourites_bloc.dart';

import 'dio_settings.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  serviceLocator.registerLazySingleton(DioSettings.new);

  serviceLocator.registerLazySingleton(() => FavouritesBloc());
}
