import 'package:acm_arts/domain/entities/art.dart';
import 'package:acm_arts/screen/search/search_store.dart';
import 'package:acm_arts/screen/search/widgets/search_art_list.dart';
import 'package:acm_arts/screen/search/widgets/search_circular_progress.dart';
import 'package:acm_arts/screen/search/widgets/search_header.dart';
import 'package:acm_arts/screen/search/widgets/search_result_title.dart';
import 'package:acm_arts/screen/search/widgets/search_text_form_field.dart';
import 'package:animated_image_list/AnimatedImageList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SearchStore store = SearchStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
      ),
      body: Observer(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SearchHeader(),
                SizedBox(height: store.search != null ? 40 : 200),
                SearchTextFormField(
                  onChanged: (String value) async {
                    store.setSearch(value);
                    await store.setArts();
                  },
                ),
                if (store.isLoading) const SearchCircularProgress(),
                if (!store.isLoading && store.search != null) ...[
                  const SearchResultTitle(),
                  SearchArtList(
                    imagesUrl: store.getImagesUrl(),
                    arts: store.arts,
                  )
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
