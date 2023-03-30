import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/models/formz/formz_status.dart';
import '../../../core/widgets/pagination_loader.dart';
import '../../bottom_navigation_bar/widgets/navigator.dart';
import 'bloc/home_bloc/home_bloc.dart';
import 'pages/detailed_recipe.dart';
import 'widgets/menu_recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: orange,
            elevation: 1,
            title: const Text(
              'Learn to cook your favourite meals',
              style: TextStyle(
                fontSize: 19,
                color: white,
              ),
            ),
          ),
          body: RefreshIndicator(
            color: orange,
            onRefresh: () async {
              context.read<HomeBloc>().add(const HomeEvent.getRecipes());
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.status == FormzStatus.pure) {
                  context.read<HomeBloc>().add(const HomeEvent.getRecipes());
                  return const SizedBox();
                } else if (state.status == FormzStatus.submissionInProgress) {
                  return const Center(
                    child: CircularProgressIndicator(color: orange),
                  );
                } else if (state.status == FormzStatus.submissionSuccess) {
                  return PaginationLoader(
                    padding: const EdgeInsets.all(16),
                    seperatorHeight: 10,
                    list: state.entities
                        .map((entity) => GestureDetector(
                            onTap: () {
                              Navigator.of(
                                context,
                                rootNavigator: true,
                              ).push(MaterialPageRoute(
                                builder: (
                                  context,
                                ) =>
                                    DetailedRecipePage(entity: entity),
                              ));
                            },
                            child: WMenuRecipe(entity: entity)))
                        .toList(),
                    onLoadMore: () {
                      context
                          .read<HomeBloc>()
                          .add(const HomeEvent.addRecipes());
                    },
                    isFailedToLoad: false,
                  );
                } else {
                  return Center(
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 152,
                        width: MediaQuery.of(context).size.width,
                        child: Center(child: Text(state.errorMessage)),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        );
      }),
    );
  }
}
