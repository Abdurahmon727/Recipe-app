// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            title: const Text('Search'),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return Autocomplete(
                    optionsBuilder: (TextEditingValue textEditingValue) async {
                      context.read<SearchBloc>().add(
                          SearchEvent.getSuggestions(textEditingValue.text));

                      if (textEditingValue.text.isEmpty) {
                        return const Iterable<String>.empty();
                      }

                      await Future.delayed(const Duration(seconds: 2));

                      final result =
                          context.read<SearchBloc>().state.suggestions;
                      return result;
                    },
                    onSelected: (String selection) {
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.getResults(selection));
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
              return const SizedBox();
            } else if (state.status == FormzStatus.submissionInProgress) {
              return const Center(
                child: CircularProgressIndicator(color: orange),
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
