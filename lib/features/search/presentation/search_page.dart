import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/models/formz/formz_status.dart';
import 'bloc/search_bloc.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SearchBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Search'),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      return Autocomplete<String>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          final result =
                              context.read<SearchBloc>().state.suggestions;
                          return Iterable.generate(
                            result.length,
                            (index) => result[index],
                          );

                          //TODO
                        },
                        onSelected: (String selection) {
                          //TODO
                          debugPrint('You just selected $selection');
                        },
                        fieldViewBuilder: (context, textEditingController,
                                focusNode, onFieldSubmitted) =>
                            TextField(
                          autofocus: true,
                          style: const TextStyle(color: white),
                          cursorColor: white,
                          controller: searchController,
                          textCapitalization: TextCapitalization.sentences,
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
                      );
                    },
                  ),
                )),
            backgroundColor: orange,
          ),
          body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            if (state.status == FormzStatus.pure) {
              context
                  .read<SearchBloc>()
                  .add(SearchEvent.getResults(searchController.text));
              return const SizedBox();
            } else if (state.status == FormzStatus.submissionInProgress) {
              return const Center(
                child: CircularProgressIndicator(color: orange),
              );
            } else if (state.status == FormzStatus.submissionSuccess) {
              return Text('Success');
            } else {
              return Text('s');
            }
          }),
        ));
  }
}
