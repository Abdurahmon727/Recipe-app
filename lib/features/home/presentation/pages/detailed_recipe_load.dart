import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:like_button/like_button.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../assets/images/images.dart';
import '../../../../core/app_functions.dart';
import '../../../../core/models/formz/formz_status.dart';
import '../../../../core/widgets/w_scale.dart';
import '../../../bottom_navigation_bar/widgets/navigator.dart';
import '../../../favourites/presentation/bloc/favourites_bloc.dart';
import '../bloc/detailed_recipe_load/detailed_recipe_load_bloc.dart';
import '../bloc/similar_recipe_bloc/bloc/similar_recipe_bloc.dart';
import '../widgets/menu_recipe.dart';
import 'detailed_recipe.dart';

class DetailedRecipeLoadPage extends StatefulWidget {
  const DetailedRecipeLoadPage({super.key, required this.id});

  final int id;

  @override
  State<DetailedRecipeLoadPage> createState() => _DetailedRecipeLoadPageState();
}

class _DetailedRecipeLoadPageState extends State<DetailedRecipeLoadPage> {
  bool isButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SimilarRecipeBloc()),
        BlocProvider(
          create: (context) => DetailedRecipeLoadBloc()
            ..add(
              DetailedRecipeLoadEvent.load(
                id: widget.id,
                onFailure: (value) => AppFunctions.showSnackbar(context, value),
              ),
            ),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocBuilder<DetailedRecipeLoadBloc, DetailedRecipeLoadState>(
          builder: (context, state) {
            if (state.status == FormzStatus.submissionSuccess) {
              return Scaffold(
                appBar: AppBar(
                  leading: WScaleAnimation(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.keyboard_backspace,
                      color: white,
                    ),
                  ),
                  backgroundColor: orange,
                  titleSpacing: 0,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          state.entity.title,
                          style: const TextStyle(fontSize: 19, color: white),
                          maxLines: 4,
                        ),
                      ),
                      WScaleAnimation(
                          onTap: () async {
                            Share.share(
                                await AppFunctions.createDynamicLink(widget.id),
                                subject: 'Checkout this recipe');
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(6),
                            child: Icon(Icons.share, color: white),
                          )),
                    ],
                  ),
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
                                  .add(FavouritesEvent.addRecipe(state.entity));

                              return true;
                            } else {
                              context.read<FavouritesBloc>().add(
                                  FavouritesEvent.removeRecipe(state.entity));

                              return false;
                            }
                          },
                          isLiked: context
                              .read<FavouritesBloc>()
                              .state
                              .entities
                              .contains(state.entity),
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
                    } else if (notification.direction ==
                        ScrollDirection.reverse) {
                      if (isButtonVisible)
                        setState(() {
                          isButtonVisible = false;
                        });
                    }
                    return true;
                  },
                  child: ListView(
                    children: [
                      CachedNetworkImage(
                        imageUrl: state.entity.image,
                        fit: BoxFit.cover,
                        errorWidget: (_, __, e) =>
                            Image.asset(AppImages.defaultRecipe),
                        placeholder: (context, url) =>
                            Image.asset(AppImages.defaultRecipe),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Text(AppFunctions.removeHtmlTags(
                                state.entity.instructions)),
                            const Text(
                              'Similar Recipes',
                              style: TextStyle(fontSize: 18),
                            ),
                            BlocBuilder<SimilarRecipeBloc, SimilarRecipeState>(
                              builder: (context, state) {
                                if (state.status == FormzStatus.pure) {
                                  context.read<SimilarRecipeBloc>().add(
                                      SimilarRecipeEvent.getRecipes(widget.id));
                                  return const SizedBox();
                                } else if (state.status ==
                                    FormzStatus.submissionInProgress) {
                                  return const SpinKitThreeBounce(
                                      size: 20, color: orange);
                                } else if (state.status ==
                                    FormzStatus.submissionSuccess) {
                                  return ListView.separated(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: state.entities.length,
                                    itemBuilder: (_, index) => GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              fade(
                                                  page: DetailedRecipePage(
                                                      entity: state
                                                          .entities[index])));
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
            } else {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator(color: orange)),
              );
            }
          },
        );
      }),
    );
  }
}
