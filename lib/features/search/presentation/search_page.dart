import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/models/formz/formz_status.dart';
import 'bloc/search_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Search'),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Autocomplete(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    context
                        .read<SearchBloc>()
                        .add(SearchEvent.getSuggestions(textEditingValue.text));
                    if (textEditingValue.text.isEmpty) {
                      return const Iterable<String>.empty();
                    }
                    // return context.read<SearchBloc>().state.suggestions;

                    final result = context.read<SearchBloc>().state.suggestions;

                    return Iterable.generate(
                      result.length,
                      (index) => result[index],
                    );
                  },
                  onSelected: (String selection) {
                    context
                        .read<SearchBloc>()
                        .add(SearchEvent.getResults(selection));
                    debugPrint('You just selected $selection');
                  },
                  fieldViewBuilder: (context, textEditingController, focusNode,
                          onFieldSubmitted) =>
                      // TextField(

                      //   focusNode: focusNode,
                      //   onSubmitted: (_) => onFieldSubmitted,
                      // )
                      TextField(
                    focusNode: focusNode,
                    autofocus: true,
                    style: const TextStyle(color: white),
                    cursorColor: white,
                    controller: textEditingController,
                    textCapitalization: TextCapitalization.sentences,
                    onSubmitted: (_) => onFieldSubmitted,
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
              ),
            ),
            backgroundColor: orange,
          ),
          body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            if (state.status == FormzStatus.pure) {
              //TODO: return last searched items with chips
              return const SizedBox();
            } else if (state.status == FormzStatus.submissionInProgress) {
              return const Center(
                child: CircularProgressIndicator(color: orange),
              );
            } else if (state.status == FormzStatus.submissionSuccess) {
              return Text('Success');
            } else {
              return Text(state.errorMessage);
            }
          }),
        );
      }),
    );
  }
}
