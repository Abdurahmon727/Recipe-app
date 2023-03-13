import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/data/service_locator.dart';
import '../../../core/models/formz/formz_status.dart';
import '../../bottom_navigation_bar/widgets/navigator.dart';
import '../../home/presentation/pages/detailed_recipe.dart';
import '../../home/presentation/widgets/menu_recipe.dart';
import 'bloc/favourites_bloc.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<FavouritesBloc>(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: const Text('My Favourites'),
            backgroundColor: orange,
          ),
          body: BlocBuilder<FavouritesBloc, FavouritesState>(
            builder: (context, state) {
              if (state.status == FormzStatus.pure) {
                context
                    .read<FavouritesBloc>()
                    .add(const FavouritesEvent.getRecipes());
                return const SizedBox();
              } else if (state.status == FormzStatus.submissionInProgress) {
                return const CircularProgressIndicator();
              } else if (state.status == FormzStatus.submissionSuccess) {
                if (state.entities.isNotEmpty) {
                  return ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            fade(
                                page: DetailedRecipePage(
                                    entity: state.entities[index]))),
                        child: WMenuRecipe(entity: state.entities[index])),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: state.entities.length,
                  );
                } else {
                  return const Center(
                    child: Text('Empty'),
                  );
                }
              } else {
                return Text(state.errorMessage);
              }
            },
          ),
        );
      }),
    );
  }
}
