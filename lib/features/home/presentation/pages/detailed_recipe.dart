// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:like_button/like_button.dart';
import 'package:remote_recipe/features/favourites/presentation/bloc/favourites_bloc.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../assets/images/images.dart';
import '../../../../core/models/formz/formz_status.dart';
import '../../../bottom_navigation_bar/widgets/navigator.dart';
import '../../domain/entity/recipe.dart';
import '../bloc/similar_recipe_bloc/bloc/similar_recipe_bloc.dart';
import '../widgets/menu_recipe.dart';

class DetailedRecipePage extends StatefulWidget {
  const DetailedRecipePage({super.key, required this.entity});

  final RecipeEntity entity;

  @override
  State<DetailedRecipePage> createState() => _DetailedRecipePageState();
}

class _DetailedRecipePageState extends State<DetailedRecipePage> {
  bool isButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SimilarRecipeBloc(),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: orange,
            title: Text(widget.entity.title),
          ),
          floatingActionButton: (isButtonVisible)
              ? FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: orange,
                  onPressed: () {},
                  child: LikeButton(
                    onTap: (isLiked) async {
                      if (!isLiked) {
                        context
                            .read<FavouritesBloc>()
                            .add(FavouritesEvent.addRecipe(widget.entity));

                        return true;
                      } else {
                        context
                            .read<FavouritesBloc>()
                            .add(FavouritesEvent.removeRecipe(widget.entity));

                        return false;
                      }
                    },
                    isLiked: context
                        .read<FavouritesBloc>()
                        .state
                        .entities
                        .contains(widget.entity),
                    padding: const EdgeInsets.only(left: 3, top: 3),
                  ),
                )
              : null,
          body: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.forward) {
                if (!isButtonVisible)
                  setState(() {
                    isButtonVisible = true;
                  });
              } else if (notification.direction == ScrollDirection.reverse) {
                if (isButtonVisible)
                  setState(() {
                    isButtonVisible = false;
                  });
              }
              return true;
            },
            child: ListView(
              children: [
                FadeInImage.assetNetwork(
                    placeholder: AppImages.defaultRecipe,
                    imageErrorBuilder: (context, error, stackTrace) =>
                        Image.asset(AppImages.defaultRecipe),
                    image: widget.entity.image),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(widget.entity.instructions),
                      const Text(
                        'Similar Recipes',
                        style: TextStyle(fontSize: 18),
                      ),
                      BlocBuilder<SimilarRecipeBloc, SimilarRecipeState>(
                        builder: (context, state) {
                          if (state.status == FormzStatus.pure) {
                            context.read<SimilarRecipeBloc>().add(
                                SimilarRecipeEvent.getRecipes(
                                    widget.entity.id));
                            return const SizedBox();
                          } else if (state.status ==
                              FormzStatus.submissionInProgress) {
                            return const SpinKitThreeBounce(
                                size: 20, color: orange);
                          } else if (state.status ==
                              FormzStatus.submissionSuccess) {
                            return ListView.separated(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shrinkWrap: true,
                              primary: false,
                              itemCount: state.entities.length,
                              itemBuilder: (_, index) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        fade(
                                            page: DetailedRecipePage(
                                                entity:
                                                    state.entities[index])));
                                  },
                                  child: WMenuRecipe(
                                      entity: state.entities[index])),
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 10),
                            );
                          } else {
                            return Text(state.errorMessage);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
