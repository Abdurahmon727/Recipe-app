// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:remote_recipe/assets/animations/animations.dart';
import 'package:remote_recipe/features/search/domain/entity/suggestion.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/models/formz/formz_status.dart';
import '../../home/presentation/pages/detailed_recipe.dart';
import '../../home/presentation/widgets/menu_recipe.dart';
import 'bloc/search_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: const Text(
              'Search',
              style: TextStyle(
                fontSize: 19,
                color: white,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Autocomplete(
                    displayStringForOption: (option) => option.title,
                    optionsViewBuilder: (context, onSelected, options) {
                      return Align(
                        alignment: Alignment.topLeft,
                        child: Material(
                          elevation: 2,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 500),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: options.length,
                              itemBuilder: (BuildContext context, int index) {
                                final option = options.elementAt(index);
                                return InkWell(
                                  onTap: () {
                                    onSelected(option);
                                  },
                                  child:
                                      Builder(builder: (BuildContext context) {
                                    final bool highlight =
                                        AutocompleteHighlightedOption.of(
                                                context) ==
                                            index;
                                    if (highlight) {
                                      SchedulerBinding.instance
                                          .addPostFrameCallback(
                                              (Duration timeStamp) {
                                        Scrollable.ensureVisible(context,
                                            alignment: 0.5);
                                      });
                                    }
                                    return Container(
                                      color: highlight
                                          ? Theme.of(context).focusColor
                                          : null,
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(option.title),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                    optionsBuilder: (TextEditingValue textEditingValue) async {
                      context.read<SearchBloc>().add(
                          SearchEvent.getSuggestions(textEditingValue.text));

                      if (textEditingValue.text.isEmpty) {
                        return const Iterable<SuggestionEntity>.empty();
                      }

                      await Future.delayed(const Duration(seconds: 2));

                      final result =
                          context.read<SearchBloc>().state.suggestions;
                      return result;
                    },
                    onSelected: (selection) {
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.getSuggestionResult(selection.id));
                    },
                    fieldViewBuilder: (_, textEditingController, focusNode,
                            onFieldSubmitted) =>
                        Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) => context
                            .read<SearchBloc>()
                            .add(SearchEvent.getSuggestions(value)),
                        focusNode: focusNode,
                        textInputAction: TextInputAction.search,
                        style: const TextStyle(color: white),
                        cursorColor: white,
                        controller: textEditingController,
                        textCapitalization: TextCapitalization.sentences,
                        onSubmitted: (text) => context
                            .read<SearchBloc>()
                            .add(SearchEvent.getResults(text)),
                        decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            contentPadding: EdgeInsets.only(left: 8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                  );
                },
              ),
            ),
            backgroundColor: orange,
          ),
          body: BlocBuilder<SearchBloc, SearchState>(builder: (_, state) {
            if (state.status == FormzStatus.pure) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 5,
                  children: [
                    Chip(
                      onDeleted: () {},
                      elevation: 2,
                      deleteIcon: const Icon(Icons.remove_circle_outline),
                      backgroundColor: orange,
                      label: Text(
                        'something',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Chip(
                      label: Text('something'),
                    ),
                    Chip(
                      label: Text('something'),
                    ),
                    Chip(
                      label: Text('something'),
                    ),
                    Chip(
                      label: Text('something'),
                    ),
                  ],
                ),
              );
            } else if (state.status == FormzStatus.submissionInProgress) {
              return Center(
                child: Lottie.asset(AppAnimations.search, height: 150),
              );
            } else if (state.status == FormzStatus.submissionSuccess) {
              if (state.results.isNotEmpty) {
                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.of(
                            context,
                            rootNavigator: true,
                          ).push(MaterialPageRoute(
                            builder: (
                              context,
                            ) =>
                                DetailedRecipePage(
                                    entity: state.results[index]),
                          )),
                      child: WMenuRecipe(entity: state.results[index])),
                  separatorBuilder: (_, __) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: state.results.length,
                );
              } else {
                return const Center(
                  child: Text('Nothing found'),
                );
              }
            } else {
              return Text(state.errorMessage);
            }
          }),
        );
      }),
    );
  }
}
